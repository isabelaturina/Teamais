const API_URL = "http://localhost:8080/api/clinicas/proximas";
const RAIO_METROS = 10000;

document.addEventListener('DOMContentLoaded', () => {
  const buscarButton = document.getElementById('buscarClinicas');
  buscarButton.addEventListener('click', buscarClinicas);

  // Menu mobile
  document.querySelector('.menu-toggle').addEventListener('click', function() {
    this.classList.toggle('active');
    document.querySelector('nav').classList.toggle('active');
  });

  document.querySelectorAll('nav a').forEach(link => {
    link.addEventListener('click', () => {
      document.querySelector('.menu-toggle').classList.remove('active');
      document.querySelector('nav').classList.remove('active');
    });
  });
});

function calcularDistancia(lat1, lon1, lat2, lon2) {
  // Validar se as coordenadas são números válidos
  if (isNaN(lat1) || isNaN(lon1) || isNaN(lat2) || isNaN(lon2)) {
    console.error('Coordenadas inválidas:', { lat1, lon1, lat2, lon2 });
    return 0;
  }

  const R = 6371; // Raio da Terra em km
  const dLat = (lat2 - lat1) * Math.PI / 180;
  const dLon = (lon2 - lon1) * Math.PI / 180;
  const a = 
    Math.sin(dLat/2) * Math.sin(dLat/2) +
    Math.cos(lat1 * Math.PI / 180) * Math.cos(lat2 * Math.PI / 180) * 
    Math.sin(dLon/2) * Math.sin(dLon/2);
  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
  const distancia = R * c; // Distância em km
  
  return distancia || 0; // Retorna 0 se o cálculo resultar em NaN
}

async function obterLocalizacao() {
  return new Promise((resolve, reject) => {
    if (!navigator.geolocation) {
      reject(new Error('Geolocalização não é suportada pelo seu navegador'));
      return;
    }

    navigator.geolocation.getCurrentPosition(
      (position) => {
        resolve({
          lat: position.coords.latitude,
          lng: position.coords.longitude
        });
      },
      (error) => {
        reject(new Error('Erro ao obter localização: ' + error.message));
      },
      {
        enableHighAccuracy: true,
        timeout: 5000,
        maximumAge: 0
      }
    );
  });
}

async function buscarClinicas() {
  const status = document.getElementById("status");
  const clinicasGrid = document.getElementById('clinicas-results');
  
  try {
    status.textContent = "Obtendo sua localização...";
    status.className = "status-message";
    
    const coordenadas = await obterLocalizacao();
    status.textContent = "Buscando clínicas próximas...";
    
    const url = `${API_URL}?lat=${coordenadas.lat}&lng=${coordenadas.lng}&raioEmMetros=${RAIO_METROS}`;
    
    const response = await fetch(url, {
      method: 'GET',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*'
      },
      mode: 'cors',
      credentials: 'omit'
    });

    if (!response.ok) {
      throw new Error(`Erro na requisição: ${response.status} ${response.statusText}`);
    }

    const data = await response.json();
    
    if (!data.body || !Array.isArray(data.body)) {
      throw new Error('Formato de resposta inválido da API');
    }

    // Ordenar clínicas por distância
    const clinicas = data.body.map(clinica => ({
      ...clinica,
      distancia: calcularDistancia(
        coordenadas.lat,
        coordenadas.lng,
        clinica.latitude,
        clinica.longitude
      )
    })).sort((a, b) => a.distancia - b.distancia);

    status.textContent = `Encontradas ${clinicas.length} clínicas em até ${RAIO_METROS/1000} km:`;
    clinicasGrid.innerHTML = '';

    if (clinicas.length === 0) {
      clinicasGrid.innerHTML = `
        <div class="no-results">
          <p>Nenhuma clínica encontrada na sua região.</p>
          <p>Tente aumentar o raio de busca ou verificar se há clínicas cadastradas.</p>
        </div>
      `;
      return;
    }

    clinicas.forEach(clinica => {
      const clinicaCard = document.createElement('div');
      clinicaCard.className = 'clinica-card';
      clinicaCard.innerHTML = `
        <h3>${clinica.nome}</h3>
        <p class="endereco">📍 ${clinica.rua}</p>
        ${clinica.telefone ? `<p class="telefone">📞 ${clinica.telefone}</p>` : ''}
        ${clinica.email ? `<p class="email">✉️ ${clinica.email}</p>` : ''}
        ${clinica.website ? `<p class="website"><a href="${clinica.website}" target="_blank">🌐 Visitar site</a></p>` : ''}
      `;
      clinicasGrid.appendChild(clinicaCard);
    });

  } catch (error) {
    console.error('Erro:', error);
    status.textContent = `Erro: ${error.message}`;
    status.classList.add("erro");
    clinicasGrid.innerHTML = `
      <div class="error-message">
        <p>Não foi possível buscar as clínicas.</p>
        <p>Por favor, verifique se o servidor está rodando em http://localhost:8080</p>
        <p>Detalhes do erro: ${error.message}</p>
      </div>
    `;
  }
}