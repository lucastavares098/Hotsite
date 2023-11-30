// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
console.log('JS iniciado!')
/**
 * Modais
 */
$(window).on('load', function () {
// Tempo do alerta
    setTimeout(function () {
        $('#tempMessage').fadeOut('fast');
    }, 3000); // 3 segundos

// Abrir modal de eventos
    $("#eventos").click(function () {
        $("#eventosModal").modal('show');
    });
// Abrir modal de apoiadores
    $("#apoiadores").click(function () {
        $("#apoiadoresModal").modal('show');
    });
// Abrir modal de vida saudavel
    $("#saudavel").click(function () {
        $("#saudavelModal").modal('show');
    });

    /**
     * Ajax
     */

    $('#formContato').on('submit', function (event) {
        event.preventDefault();
        console.log('Parou o submit!');
        $.ajax({
            url: '/Home/Cadastrar',
            method: 'POST',
            data: $(this).serialize(),
            dataType: 'json',
            success: function (data) {
                console.log('Ajax realizado com sucesso!');
                $('#formContato').hide();
                $('h2:contains("Entre em contato!")').replaceWith('');
                $('p:contains("Nos mande uma mensagem e fique por dentro de nossos eventos")').replaceWith('<div class="alert alert-success" role="alert">Cadastro realizado com sucesso!</div>');
            },
            error: function (jqXHR) {
                console.log('Erro: ' + jqXHR.responseText);
                $('#formContato').hide();
                $('h2:contains("Entre em contato!")').replaceWith('');
                $('p:contains("Nos mande uma mensagem e fique por dentro de nossos eventos")').replaceWith('<div class="alert alert-danger" role="alert">Houve um erro ao fazer o cadastro. Por favor, recarregue a página e tente novamente!</div>');
            }
        });
    });
});