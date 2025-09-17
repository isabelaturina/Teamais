<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>TEA+</title>
  <link href="css/style.css" rel="stylesheet" type="text/css"/>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet"/>
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
            <a href="noticias-protegido.jsp">Not�cias</a>
            <a href="clinicas-protegido.jsp">Cl�nicas</a>
            <a href="chat-protegido.jsp">IA bea</a>
                     
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

  <section class="hero">
    <div class="hero-texto">
      <h1>o autismo � parte deste mundo<br>n�o um <span class="destaque">mundo</span> a parte dele</h1>
      <p>Conhecer � o primeiro passo para acolher!</p>
    </div>
    <div class="hero-imagem">
    <img src="icon/hero.png"  alt="Ilustra��o de m�e e filho" />
      
    </div>
  </section>

  <!-- Explore nossos recursos -->
  <section id="explore" class="explore-recursos">
    <h2>Explore Nossos Recursos</h2>
    <p class="subtitulo">ferramentas e informa��es essenciais para apoiar sua jornada</p>
    
   <div class="cards-grid">
            <a href="curio.jsp" class="card-recurso">
                <div class="icone">
                    <img src="icon/curiosidades.png" alt=""/>
                </div>
                <h3>Curiosidades</h3>
                <p>Descubra fatos interessantes e informa��es importantes sobre o espectro autista</p>
            </a>

          <a href="direitoseleis.jsp" class="card-recurso">
                <div class="icone">
                    <img src="icon/direitoseleis.png" alt=""/>
                </div>
                <h3>Direitos e leis</h3>
                <p>Conhe�a os direitos garantidos por lei para pessoas com autismo e suas fam�lias</p>
            </a>

             <a href="entendendo-autismo.jsp" class="card-recurso">
                <div class="icone">
                    <img src="icon/noticias.png" alt=""/>
                </div>
                <h3>Entendendo</h3>
                <p>Entendo o por que cada pessoa/crian�a autista age de uma forma</p>
            </a>

            <a href="diagnostico.jsp" class="card-recurso">
                <div class="icone">
                    <img src="icon/clinicasprox.png" alt=""/>
                </div>
                <h3>Diagnosticos</h3>
                <p>Reconhecer os sinais precocemente pode fazer toda a diferen�a no desenvolvimento da crian�a. Aqui voc� encontrar� 
                    informa��es baseadas em evid�ncias cient�ficas.</p>
            </a>
        </div>
    </section>
  
  </section>

  <!-- Quem somos n�s --> 
  <section class="quem-somos">
    <div class="quem-somos-texto">
      <h2>Quem somos n�s?</h2>
      <p class="descricao">Nossas ideias e o objetivos desse projeto t�o especial</p>
      <p class="texto-principal">Acreditamos que cada pessoa � �nica e especial, e que o autismo n�o define ningu�m. Na TEA+, celebramos a neurodiversidade e trabalhamos para construir um mundo mais inclusivo e acolhedor para pessoas com Transtorno do Espectro Autista (TEA). Promovemos a inclus�o, oferecemos suporte a fam�lias e profissionais, celebramos a neurodiversidade e combatemos o preconceito, buscando construir um mundo onde todas as pessoas, independentemente de suas diferen�as, tenham a oportunidade de viver uma vida plena e feliz.</p>
      
      <div class="valores-icones">
        <div class="valor-item">
          <img src="icon/conhecimento.png" alt="�cone de conhecimento" />
          <h3>Conhecimento<h3>
        </div>
        <div class="valor-item">
          <img src="icon/escudo.png" alt="�cone de prote��o" />
          <h3>Prote��o</h3>
        </div>
        <div class="valor-item">
          <img src="icon/mente.png" alt="�cone de conhecimento global" />
          <h3>Mente</h3>
        </div>
      </div>
    </div>


    <div class="nossos-valores">
      <h3>Nossos Valores</h3>
      <ul>
        <li>Inclus�o e acessibilidade para todos</li>
        <li>informa��es baseadas em evid�ncias</li>
        <li>Suporte cont�nuo �s fam�lias</li>
        <li>celebra��o da neurodiversidade</li>
      </ul>
    </div>
  </section>

  <!-- Footer -->
  <footer class="footer">
    <div class="footer-content">
      <div class="footer-section">
        <div class="logo-footer">
           <img src="icon/logo.png" alt="Logo TEA+" />
           
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
    </div>
  </footer>

  <script>
    document.querySelector('.menu-toggle').addEventListener('click', function() {
      this.classList.toggle('active');
      document.querySelector('nav').classList.toggle('active');
    });

    // Fecha o menu ao clicar em um link
    document.querySelectorAll('nav a').forEach(link => {
      link.addEventListener('click', () => {
        document.querySelector('.menu-toggle').classList.remove('active');
        document.querySelector('nav').classList.remove('active');
      });
    });
  </script>

  
</body>
</html> 