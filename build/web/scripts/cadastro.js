let form = document.getElementById('form');
let username = document.getElementById('input-nome');
let email = document.getElementById('input-email');
let senha = document.getElementById('input-senha');
let cpf = document.getElementById('input-cpf');
let telefone = document.getElementById('input-telefone');

form.addEventListener('submit', e => {
    e.preventDefault();

    validateInputs();
});

const setError = (element, message) => {
    const inputField = element.parentElement;
    const errorDisplay = inputField.querySelector('.error');

    errorDisplay.innerText = message;
    inputField.classList.add('error');
    inputField.classList.remove('success');
};

const setSuccess = element => {
    const inputField = element.parentElement;
    const errorDisplay = inputField.querySelector('.error');

    errorDisplay.innerText = '';
    inputField.classList.add('success');
    inputField.classList.remove('error');
};

const validateInputs = () => {
    let usernameValue = username.value.trim();
    let senhaValue = senha.value.trim();
    let emailValue = email.value.trim();
    let cpfValue = cpf.value.trim();
    let telefoneValue = telefone.value.trim();

    if (usernameValue === '') {
        setError(username, 'Nome de usuário necessário');
    } else {
        setSuccess(username);
    }

    if (senhaValue === '') {
        setError(senha, 'Senha é necessária');
    } else if (senhaValue.length < 8) {
        setError(senha, 'É necessário ter pelo menos 8 dígitos');
    } else {
        setSuccess(senha);
    }

    if (emailValue === '') {
        setError(email, 'Email é necessário');
    } else {
        setSuccess(email);
    }

    if (cpfValue === '') {
        setError(cpf, 'CPF é necessário');
    } else {
        // Formata o CPF com pontos e traço
        cpfValue = cpfValue.replace(/\D/g, ''); // Remove caracteres não numéricos
        cpfValue = cpfValue.replace(/(\d{3})(\d)/, '$1.$2');
        cpfValue = cpfValue.replace(/(\d{3})(\d)/, '$1.$2');
        cpfValue = cpfValue.replace(/(\d{3})(\d{1,2})$/, '$1-$2');
        cpf.value = cpfValue;
        setSuccess(cpf);
    }

    if (telefoneValue === '') {
        setError(telefone, 'Telefone é necessário');
    } else {
        // Formata o telefone com padrão (XX) XXXX-XXXX ou (XX) X XXXX-XXXX
        telefoneValue = telefoneValue.replace(/\D/g, ''); // Remove caracteres não numéricos
        telefoneValue = telefoneValue.replace(/^(\d{2})(\d)/g, '($1) $2'); // Formato padrão para DDD
        telefoneValue = telefoneValue.replace(/(\d)(\d{4})$/, '$1 $2'); // Adiciona espaço entre os últimos 4 dígitos
        telefone.value = telefoneValue;
        setSuccess(telefone);
    }
};

// Adicione um event listener ao campo de CPF
cpf.addEventListener('input', function(event) {
    // Remove qualquer caractere que não seja número do valor atual do campo
    let cpfValue = event.target.value.replace(/\D/g, '');

    // Formata o CPF com pontos e traço
    cpfValue = cpfValue.replace(/(\d{3})(\d)/, '$1.$2');
    cpfValue = cpfValue.replace(/(\d{3})(\d)/, '$1.$2');
    cpfValue = cpfValue.replace(/(\d{3})(\d{1,2})$/, '$1-$2');

    // Atualiza o valor do campo com o CPF formatado
    event.target.value = cpfValue;
});

// Adicione um event listener ao campo de telefone
telefone.addEventListener('input', function(event) {
    // Remove qualquer caractere que não seja número do valor atual do campo
    let telefoneValue = event.target.value.replace(/\D/g, '');

    // Formata o telefone com padrão (XX) XXXX-XXXX ou (XX) X XXXX-XXXX
    telefoneValue = telefoneValue.replace(/^(\d{2})(\d)/g, '($1) $2'); // Formato padrão para DDD
    telefoneValue = telefoneValue.replace(/(\d)(\d{4})$/, '$1 $2'); // Adiciona espaço entre os últimos 4 dígitos

    // Atualiza o valor do campo com o telefone formatado
    event.target.value = telefoneValue;
});
