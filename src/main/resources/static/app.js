$(document).ready(function () {
    //Función para crear un usuario
    $("#crearUser").on("click", function () {
        //Se deshabilita el botón mientras se van a revisar los datos
        $("#crearUser").prop("disabled", true);
        //Se obtienen los datos del form
        var cedula = $("#cedula").val();
        var nombre = $("#nombre").val();
        var apellido = $("#apellido").val();
        var email = $("#email").val();
        var contrasenya = $("#cont").val();
        //Se verifica que los campos obligatorios se encuentren llenos para hacer enviar los datos al servidor
        if (cedula === "" || nombre === "" || apellido === "" || email === "" || contrasenya === "") {
            $("#crearUser").prop("disabled", false);
            $("#cedula").css("border-color", "red");
            $("#nombre").css("border-color", "red");
            $("#apellido").css("border-color", "red");
            $("#email").css("border-color", "red");
            $("#cont").css("border-color", "red");
            $("#error_cedula").html("Llene el campo indicado.");
            $("#error_nombre").html("Llene el campo indicado.");
            $("#error_apellido").html("Llene el campo indicado.");
            $("#error_email").html("Llene el campo indicado.");
            $("#error_cont").html("Llene el campo indicado.");
        } else {
            $("#cedula").css("border-color", "");
            $("#nombre").css("border-color", "");
            $("#apellido").css("border-color", "");
            $("#email").css("border-color", "");
            $("#cont").css("border-color", "");
            $("#error_cedula").css("opacity", 0);
            $("#error_nombre").css("opacity", 0);
            $("#error_apellido").css("opacity", 0);
            $("#error_email").css("opacity", 0);
            $("#error_cont").css("opacity", 0);
            $.ajax({
                type: "POST",
                data: {
                    cedula: cedula,
                    nombre: nombre,
                    apellido: apellido,
                    email: email,
                    contrasenya: contrasenya,
                },
                url: "/usuarios/agregar",
                success: function (data) {
                    $("#form1")[0].reset();
                    $("#error1").text("");
                    $("#success1").css("display", "block");
                    $("#success1").text("Usuario creado");
                    $("#success1").delay(2000).fadeOut("slow");
                },
                error: function (e) {
                    $("#error1").css("display", "block");
                    $("#error1").text("Cédula ya existe en el sistema");
                    $("#error1").delay(3000)
                        .fadeOut("slow", function () {
                            setTimeout(function () {
                                location.reload();
                            }, 1000);
                    });
                },
            });
        }
    });
    //Función para editar un usuario
    $("#editUser").on("click", function () {
        //Se deshabilita el botón mientras se van a enviar los datos
        $("#editUser").prop("disabled", true);
        //La cédula de usuario
        var cedula = $(this).data("id");
        //Se obtienen los datos del form
        var nombre = $("#nombre2").val();
        var apellido = $("#apellido2").val();
        var email = $("#email2").val();
        var contrasenya = $("#cont2").val();
        $.ajax({
            type: "PUT",
            url: "/usuarios/update/" + cedula,
            data: {
                nombre: nombre,
                apellido: apellido,
                email: email,
                contrasenya: contrasenya,
            },
            success: function (data, statusText, xhr) {
                $("#form2")[0].reset();
                $("#error2").text("");
                $("#success2").css("display", "block");
                $("#success2").text("Usuario actualizado");
                $("#success2").delay(2000).fadeOut("slow");
            },
            error: function (e) {
                $("#error2").css("display", "block");
                $("#error2").text("Llene todos los campos");
                $("#error2")
                    .delay(3000)
                    .fadeOut("slow", function () {
                        setTimeout(function () {
                            location.reload();
                        }, 500);
                    });
            },
        });
    });

    //Función para eliminar un usuario
    $(".deleteUser").on("click", function() {
        var cedula = $(this).data("id");
        if (confirm("¿Desea eliminar el usuario?")) {
            $.ajax({
                url: "/usuarios/eliminar/" + cedula,
                type: "DELETE",
                success: function (e) {
                    $("body").fadeOut(500, function () {
                        location.reload();
                    });
                },
                error: function (xhr, textStatus) {
                    alert("Error al eliminar el usuario");
                },
            });
        }
    });
});
