<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Curiosidades</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/curio.css" />
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


     <nav class="primeira">
      <h1>Curiosidades Sobre o <span>autismo</span></h1>
      <p>
        Informa��es e fatos que ajudam a entender melhor o espectro autista e
        celebrar suas singularidades.
      </p>
      <div class="circulo"></div>
      <div class="circulo2"></div>
    </nav>

    <div class="cards-container">
      <div class="quadrado">
        <img src="icon/hiperfoco.png" class="hiperfoco" alt="�cone de hiperfoco" />
        <div class="text-content">
          <h2 class="hiperfoco2">Hiperfoco</h2>
          <p class="txthiperfoco">
            Estado de concentra��o extrema e intensa em um interesse ou atividade
            espec�fica, comum em pessoas autistas.
          </p>
        </div>
      </div>

      <div class="quadrado2">
        <img src="icon/sensibilidade.png" class="sensibilidade" alt="�cone de sensibilidade sensorial" />
        <div class="text-content">
          <h2 class="sensibilidade2">Sensibilidade sensorial</h2>
          <p class="txtsensibilidade">
            Pessoas autistas costumam ter o sistema sensorial diferente, percebendo
            est�mulos (som, luz, toque, cheiro, gosto, etc.) de forma mais 
            intensa (hipersensibilidade) ou menos intensa (hipossensibilidade) que o
            habitual.
          </p>
        </div>
      </div>

      <div class="quadrado3">
        <img src="icon/pessoas.png" class="pessoas" alt="�cone de estat�stica" />
        <div class="text-content">
          <h2 class="pessoas2">1 em cada 36 crian�as</h2>
          <p class="txtpessoas">
            Esse n�mero mostra que o autismo � muito mais comum do que se pensava no
            passado. Os diagn�sticos aumentaram bastante nas �ltimas d�cadas
          </p>
        </div>
      </div>

      <div class="quadrado4">
        <img src="icon/simbolotea.png" class="simbolo" alt="S�mbolo do autismo" />
        <div class="text-content">
          <h2 class="simbolo2">s�mbolo do autismo</h2>
          <p class="txtsimbolo">
            Diversidade, identidade, inclus�o, respeito. Cada cor e forma representa
            a variedade de caracter�sticas, habilidades e desafios de cada pessoa
            autista.
          </p>
        </div>
      </div>
    </div>

    <div class="famosos">
      <h3>Famosos que <span>possuem </span> o aspecto <span>Autista</span></h3>
      <p>Personalidades conhecidas mundialmente que est�o no espectro autista e mostram que o autismo n�o � uma limita��o, mas uma forma �nica de ver o mundo</p>
      <div class="galeria-famosos">
        <div class="famoso-item card-blue">
          <div class="img-container">
            <img src="icon/anthony.png" alt="Anthony Hopkins" class="foto-famoso" />
          </div>
          <h4>Anthony Hopkins</h4>
          <span class="tag">Ator brit�nico</span>
          <p class="descricao">
            Vencedor do Oscar de melhor ator, diagnosticado com s�ndrome de Asperger em 2014. Sua mente cient�fica e sua intensa concentra��o s�o caracter�sticas que o ajudaram a se tornar um dos maiores atores de todos os tempos.
          </p>
        </div>
        <div class="famoso-item card-green">
          <div class="img-container">
            <img src="icon/greta thunberg.jpg" alt="Greta Thunberg" class="foto-famoso" />
          </div>
          <h4>Greta Thunberg</h4>
          <span class="tag">Ativista ambiental</span>
          <p class="descricao">
            Tornou-se a inspiradora voz do ativismo em prol do meio ambiente. A jovem sueca v� seu autismo como um "superpoder" que a ajuda a ver as mudan�as clim�ticas.
          </p>
        </div>
        <div class="famoso-item card-purple">
          <div class="img-container">
            <img src="icon/leticia sabatella.png" alt="Leticia Sabatella" class="foto-famoso" />
          </div>
          <h4>Leticia Sabatella</h4>
          <span class="tag">Atriz brasileira</span>
          <p class="descricao">
            Em entrevista, compartilhou que s� recebeu o diagn�stico aos 48 anos. A atriz v� o autismo como uma caracter�stica que a ajuda a ter uma vis�o �nica da sociedade e intera��es art�sticas.
          </p>
        </div>
        <div class="famoso-item card-pink">
          <div class="img-container">
            <img src="icon/cantora-sia 1.png" alt="Sia" class="foto-famoso" />
          </div>
          <h4>Sia</h4>
          <span class="tag">Cantora compositora</span>
          <p class="descricao">
            Recebeu em 2021 seu diagn�stico com s�ndrome de Asperger. A artista australiana v� sua neurodiverg�ncia como parte fundamental de sua express�o art�stica e criatividade musical.
          </p>
        </div>
        <div class="famoso-item card-blue">
          <div class="img-container">
            <img src="icon/albert.png" alt="Albert Einstein" class="foto-famoso" />
          </div>
          <h4>Albert Einstein</h4>
          <span class="tag">F�sico te�rico</span>
          <p class="descricao">
            � hoje um dos f�sicos mais renomados de todos os tempos. Estudos posteriores sugerem que ele apresentava caracter�sticas do espectro autista, como dificuldades de comunica��o.
          </p>
        </div>
        <div class="famoso-item card-green">
          <div class="img-container">
            <img src="icon/elon musk.png" alt="Elon Musk" class="foto-famoso" />
          </div>
          <h4>Elon Musk</h4>
          <span class="tag">Empres�rio inovador</span>
          <p class="descricao">
            CEO da Tesla e SpaceX, revelou publicamente em um programa de TV que tem s�ndrome de Asperger. Sua mente �nica o ajuda a pensar de forma diferente e inovar.
          </p>
        </div>
      </div>
      <div class="mensagem-final">
        <p>Esses exemplos mostram que o autismo pode ser um exemplo de for�a e inova��o</p>
      </div>
    </div>
 <section class="fatos-importantes">
      <h2>Fatos <span>importantes</span> sobre o <span>autismo</span></h2>
      <p class="subtitulo">Informa��es essenciais que todo respons�vel deve conhecer sobre o autismo</p>
      
      <div class="fatos-grid">
        <div class="fato-card">
          <span class="numero">1</span>
          <p>Pessoas autistas possuem seu pr�prio ritmo para aprender e se expressar</p>
        </div>
        <div class="fato-card">
          <span class="numero">2</span>
          <p>O autismo afeta pessoas de todos os grupos �tnicos e socioecon�micos</p>
        </div>
        <div class="fato-card">
          <span class="numero">3</span>
          <p>Cada pessoa autista � �nica, com suas pr�prias for�as e desafios</p>
        </div>
        <div class="fato-card">
          <span class="numero">4</span>
          <p>Muitas pessoas autistas s�o altamente criativas e inovadoras</p>
        </div>
        <div class="fato-card">
          <span class="numero">5</span>
          <p>O diagn�stico precoce pode fazer uma grande diferen�a no desenvolvimento</p>
        </div>
        <div class="fato-card">
          <span class="numero">6</span>
          <p>Terapias personalizadas s�o mais efetivas que abordagens gen�ricas</p>
        </div>
      </div>
    </section>

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
