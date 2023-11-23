// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.

$(document).ready(function () {

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
});