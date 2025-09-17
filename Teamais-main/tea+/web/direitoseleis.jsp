<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Direitos e Leis</title>
  <link href="css/direitoseleis.css" rel="stylesheet" type="text/css"/>
  <link href="css/style.css" rel="stylesheet" type="text/css"/>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>
  <header>
      <div class="header-container">
          <div class="logo">
              <img src="icon/logo.png" alt=""/>
          </div>
          <nav class="main-nav">
              <a href="index.jsp">In�cio</a>
              <a href="perfil.jsp">Perfil</a>
               <a href="verificaLoginRedireciona.jsp?destino=noticias.html">Not�cias</a>
                <a href="verificaLoginRedireciona.jsp?destino=clinicasprox.html">Cl�nicas</a><br>
              <a href="verificaLoginRedireciona.jsp?destino=chat.html">IA Bea</a><br>
     
              <% if (session.getAttribute("email") == null) { %>
      <a href="login.html" class="entrar" id="login-link">Entrar</a>
      <a href="cadastro.html" class="cadastrar" id="register-link">Cadastrar</a>
  <% } else { %>
      <a href="logout.jsp" class="logout" id="logout-link">Sair</a>
 
  <% } %>
          </nav>
          <div class="menu-toggle">
              <span></span>
              <span></span>
              <span></span>
          </div>
      </div>
  </header>

  <main class="container">
    <section class="title-section">
      <div class="icons">
          <img src="icon/balan�a.png" alt="Balan�a" class="icon" />
          <div class="title-text">
          <h1><em>Direitos e Leis</em></h1>
          <p>que <span class="blue-text">voc�</span> precisa <a href="#" class="link">saber!</a></p>
          <span class="linha"></span>
        </div>
          <img src="icon/martelo.png" alt="Martelo" class="icon" />
      </div>
    </section>

    <section class="laws-section">
      <h2>Principais Leis</h2>
      <div class="laws-grid">
        <div class="law-box">
          1. Lei n� 12.764/2012 ? Lei Berenice Piana
          Institui a Pol�tica Nacional de Prote��o dos Direitos da Pessoa com Transtorno do Espectro Autista,
          reconhecendo o autismo como defici�ncia para todos os efeitos legais. Garante:
          Vida digna, integridade f�sica e moral.
          Acesso a educa��o e sa�de.
          Atendimento multiprofissional.
          Inclus�o no mercado de trabalho.
          Prioridade em atendimentos e servi�os p�blicos.
          Carteira de Identifica��o da Pessoa com TEA (CIPTEA).</p>
        </div>
        <div class="law-box">
          <p>2. Lei n� 13.146/2015 ? Estatuto da Pessoa com Defici�ncia
            Conhecida como Lei Brasileira de Inclus�o, assegura direitos fundamentais �s pessoas com defici�ncia,
            incluindo:
            Educa��o inclusiva.
            Acessibilidade.
            Sa�de e reabilita��o.
            Trabalho e previd�ncia social.
            Assist�ncia social.</p>
        </div>
        <div class="law-box">
          <p>3. Lei n� 8.742/1993 ? Lei Org�nica da Assist�ncia Social (LOAS)
            Garante o Benef�cio de Presta��o Continuada (BPC) a pessoas com defici�ncia, incluindo autistas, que
            comprovem baixa renda familiar</p>
        </div>
        <div class="law-box">
          <p> 4. Lei n� 13.977/2020 ? Lei Romeo Mion
            Essa lei criou a Carteira de Identifica��o da Pessoa com Transtorno do Espectro Autista (CIPTEA), com o
            objetivo de garantir mais visibilidade e respeito aos direitos da pessoa com autismo.
            Garante prioridade em atendimentos nos servi�os p�blicos e privados, como hospitais, farm�cias, bancos, etc.
            Deve ser emitida gratuitamente pelas prefeituras, com validade em todo o territ�rio nacional.
            Ajuda a evitar constrangimentos e a facilitar o acesso a direitos j� garantidos em outras leis (como a
            12.764/2012).</p>
        </div>
      </div>
    </section>

    <div class="illustration">
        <img src="icon/conversas.png" alt=""/>
    </div>

    <footer class="bottom-title">
      <h3>Principais direitos:</h3>
    </footer>
    <section class="rights">
      <div class="rights-grid">
        <div class="right-box">
            <img src="icon/educacao.png" alt=""/>
            <p><strong>Direitos na Educa��o</strong><br>
            ? Matr�cula obrigat�ria em escolas regulares.<br>
            ? Atendimento educacional especializado.<br>
            ? Proibi��o de cobran�a adicional por adapta��es.<br>
            ? Forma��o de professores para inclus�o.
          </p>
        </div>

        <div class="right-box">
            <img src="icon/transporte.png" alt=""/>
            <p><strong>Direitos em Transporte e Mobilidade</strong><br>
            ? Passe livre em transportes p�blicos.<br>
            ? Descontos em passagens a�reas.<br>
            ? Prioridade em filas e atendimentos.
          </p>
        </div>

        <div class="right-box">
            <img src="icon/hospital.png" alt=""/>
            <p><strong>Direitos na Sa�de</strong><br>
            ? Diagn�stico precoce e tratamento adequado.<br>
            ? Atendimento multiprofissional.<br>
            ? Fornecimento de medicamentos e terapias.<br>
            ? Cobertura pelos planos de sa�de sem limita��es indevidas.
          </p>
        </div>

        <div class="right-box">
            <img src="icon/balan�a.leis.png" alt=""/>
            <p><strong>Outros Direitos Importantes</strong><br>
            ? Prioridade em processos judiciais.<br>
            ? Isen��o de impostos na compra de ve�culos adaptados.<br>
            ? Acesso a programas de inclus�o no mercado de trabalho.
          </p>
        </div>
      </div>
    </section>
  </main>

  <footer class="footer">
    <div class="footer-content">
      <div class="footer-section">
        <div class="logo-footer">
            <img src="icon/logo.png" alt=""/>
            <span>Teamais</span>
        </div>
        <p>Nossa miss�o � ajudar respons�veis e entender mais sobre o espectro autista e auxiliar com informa��es verdadeiras sobre como lidar com seus filhos autistas.</p>
      </div>
 <div class="footer-section">
        <h4>Links r�pidos</h4>
        <nav>
           <a href="index.jsp" >In�cio</a>
           <a href="curio.jsp" >Curiosidades</a>    
           <a href="direitoseleis.jsp">Direitos e leis</a>
           <a href="entendendo-autismo.jsp">Entendendo</a>       
           <a href="diagnostico.jsp">Diagnostico</a>
        </nav>
      </div>

      
    </div>
  </footer>

  <script>
    document.addEventListener('DOMContentLoaded', function() {
        const menuToggle = document.querySelector('.menu-toggle');
        const mainNav = document.querySelector('.main-nav');
        
        if (menuToggle && mainNav) {
            menuToggle.addEventListener('click', function() {
                menuToggle.classList.toggle('active');
                mainNav.classList.toggle('active');
            });
        }
    });
  </script>
</body>

</html>