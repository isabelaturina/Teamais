<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String emailLogin = request.getParameter("email");
    String senhaLogin = request.getParameter("senha");

    Connection conexao = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        // Carregar o driver do MySQL
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Conexão com o banco de dados
        String url = "jdbc:mysql://localhost:3306/tea";
        String user = "root"; // <-- Corrigido
        String password = "root"; // <-- sua senha do MySQL, se tiver

        conexao = DriverManager.getConnection(url, user, password);

        // Verificar se existe um usuário com esse email e senha
        String checkEmailSql = "SELECT * FROM usuario WHERE email = ? AND senha = ?";
        stmt = conexao.prepareStatement(checkEmailSql);
        stmt.setString(1, emailLogin);
        stmt.setString(2, senhaLogin);

        rs = stmt.executeQuery();

        if (rs.next()) {
            // Login bem-sucedido, redireciona para a página principal
            response.sendRedirect("index.html");
        } else {
            // Login falhou, volta para o login com mensagem de erro
            out.println("<p style='color:red;'>Usuário ou senha incorretos.</p>");
        }

    } catch (ClassNotFoundException e) {
        out.println("<p style='color:red;'>Erro: Driver do banco de dados não encontrado.</p>");
    } catch (SQLException e) {
        out.println("<p style='color:red;'>Erro ao conectar ou buscar dados no banco de dados: " + e.getMessage() + "</p>");
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conexao != null) conexao.close();
        } catch (SQLException e) {
            out.println("<p style='color:red;'>Erro ao fechar conexão: " + e.getMessage() + "</p>");
        }
    }
%>
