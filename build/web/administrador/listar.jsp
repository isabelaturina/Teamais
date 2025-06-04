<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem</title>
    </head>
    <body>
        <%
            try {
            // Fazer a conexao com o banco de dados
            Connection conecta;
            PreparedStatement st;
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/tea";
            String user="root";
            String password="root";
            conecta=DriverManager.getConnection(url,user,password);
            // Lista os dados  da tabela produto do banco de dados
            String sql=("SELECT * FROM usuario");
            st=conecta.prepareStatement(sql);
            // ResultSet serve para guardar aquilo que é trazido do BD
            ResultSet rs=st.executeQuery();
            // Enquanto não chegar no final, ele vai executar
            // o que estiver dentro do while 
            // vamos montar uma tabela html
            // criando o titulo da tabela 
            // encerrar o código Java            
        %>
        <table border="3">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>email</th>
                <th>senha</th>
               
            </tr>
            <%
                while (rs.next()){                               
            %>
                <!--<!-- Finalizei o codigo java acima e agora vou 
                criar uma tabela html para mostrar os dados trazidos
                do BD-->
            <tr>
                <td>
                    <%= rs.getString("id")%>
                </td>
                <td>
                    <%= rs.getString("nome")%>
                </td>
                <td>
                    <%= rs.getString("email")%>
                </td>
                <td>
                    <%= rs.getString("senha")%>
                </td>
               
                <td>
                    <a href="excluir.jsp?id=<%=rs.getString("id")%>">Excluir</a>
                </td>
            </tr>
            <%
                }
                %>
        </table>
        <% 
            } catch (Exception x) {
                out.print ("Mensagem de erro: " + x.getMessage());
            }
        %>
        
    </body>
</html>