// Obter os elementos do formulário e da modal
const form = document.getElementById("payment-form");
const modal = document.getElementById("confirmation-modal");
const transactionIdElement = document.getElementById("transaction-id");
const transactionValueElement = document.getElementById("transaction-value");
const transactionDateElement = document.getElementById("transaction-date");

// Abrir a modal quando o formulário for enviado
form.addEventListener("submit", function (event) {
    event.preventDefault(); // Impede o envio real do formulário

    // Gerar um ID de transação aleatório
    const transactionId = Math.floor(Math.random() * 10000000000);

    // Obter a data atual da transação
    const transactionDate = new Date();
    const formattedDate = transactionDate.toLocaleDateString('pt-BR', {
        year: 'numeric',
        month: 'long',
        day: 'numeric'
    });

    // Valor fixo da transação (modifique conforme necessário)
    const transactionValue = 200.00;

    // Preencher os detalhes da transação na modal
    transactionIdElement.textContent = transactionId;
    transactionValueElement.textContent = transactionValue.toFixed(2);
    transactionDateElement.textContent = formattedDate;

    // Exibir o modal de confirmação
    modal.style.display = "block";
});

// Fechar o modal quando o botão "X" for clicado
function closeModal() {
    modal.style.display = "none";
}
