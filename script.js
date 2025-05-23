function togglePassword() {
    const senhaInput = document.getElementById('senha');
    const eyeIcon = document.getElementById('eye-icon');
    
    // Alterna o tipo do campo senha
    if (senhaInput.type === 'password') {
        senhaInput.type = 'text';
        eyeIcon.textContent = '🙈';  // Ícone de olho fechado
    } else {
        senhaInput.type = 'password';
        eyeIcon.textContent = '👁️';  // Ícone de olho aberto
    }
}
