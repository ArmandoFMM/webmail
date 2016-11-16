$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});


$("#compor-msg").click(function () {
    swal({
        title: 'Compor Mensagem',
        showCancelButton: true,
        confirmButtonText: 'Enviar',
        showLoaderOnConfirm: true,
        html: '<form class="form-horizontal">' +
        '<fieldset>' +
        <!-- Email-->
        '<div class="form-group">' +
        '<label class="col-md-4 control-label" for="email">E-mail</label>' +
        '<div class="col-md-4">' +
        '<input id="email" name="email" type="text" placeholder="e-mail" class="form-control input-md" required="">' +

        '</div>' +
        '</div>' +

        <!-- Assunto-->
        '<div class="form-group">' +
        '<label class="col-md-4 control-label" for="textinput">Assunto</label>' +
        '<div class="col-md-4">' +
        '<input id="assunto" name="assunto" type="text" placeholder="Escreva o Assunto" class="form-control input-md">' +
        '</div>' +
        '</div>' +

        <!-- Mensagem-->
        '<div class="form-group">' +
        '<label class="col-md-4 control-label" for="textarea">Mensagem</label>' +
        '<div class="col-md-4">' +
        '<textarea class="form-control" id="mensagem" name="mensagem"></textarea>' +
        '</div>' +
        '</div>' +

        '</fieldset>' +
        '</form>',
        preConfirm: function () {

            var email = $("#email").val();
            var assunto = $("#assunto").val();
            var mensagem = $("#mensagem").val();
            var rota = "http://localhost:8000/msg";

            $.ajax({
                url: rota,
                type: 'POST',
                dataType: 'json',
                data: {destinatario: email, assunto: assunto, mensagem: mensagem},
                success: swal({
                    title: 'Mensagem Enviada com sucesso!',
                    text: '',
                    timer: 2000
                })
            });


        },
        allowOutsideClick: true
    }).then(function () {

    })
});


$(".reply-msg").click(function () {
    var email = $(this).data("email");
    var assunto = $(this).data("assunto");
    console.log($(this).data("email"));
    swal({
        title: 'Responder Mensagem',
        showCancelButton: true,
        confirmButtonText: 'Enviar',
        showLoaderOnConfirm: true,
        html: '<form class="form-horizontal">' +
        '<fieldset>' +
        <!-- Mensagem-->
        '<div class="form-group">' +
        '<label class="col-md-4 control-label" for="textarea">Mensagem</label>' +
        '<div class="col-md-4">' +
        '<textarea class="form-control" id="mensagem" name="mensagem"></textarea>' +
        '</div>' +
        '</div>' +

        '</fieldset>' +
        '</form>',
        preConfirm: function () {

            var mensagem = $("#mensagem").val();
            var rota = "http://localhost:8000/msg";

            $.ajax({
                url: rota,
                type: 'POST',
                dataType: 'json',
                data: {destinatario: email, assunto: assunto, mensagem: mensagem},
                success: swal({
                    title: 'Mensagem Enviada com sucesso!',
                    text: '',
                    timer: 2000
                })
            });


        },
        allowOutsideClick: true
    }).then(function () {

    })
});





