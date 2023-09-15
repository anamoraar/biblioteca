$(document).ready(function () {
    //Función para hacer el login
    $("#login").on("click", function () {
        //Se deshabilita el botón mientras se van a revisar los datos
        $("#login").prop("disabled", true);
        //Se obtienen los datos del form
        var email = $("#loginemail").val();
        var password = $("#loginpassword").val();
        //Se verifica que los campos obligatorios se encuentren llenos para enviar los datos al servidor
        if (email === "" || password === "") {
            $("#error_login").css("display", "block");
            $("#error_login").text("Llene todos los campos");
            $("#error_login").delay(3000)
                .fadeOut("slow", function () {
                    setTimeout(function () {
                        location.reload();
                    }, 1000);
                });
        } else {
            $.ajax({
                type: "POST",
                data: {
                    email: email,
                    password: password,
                },
                url: "/login",
                success: function (data) {
                    $("#loginForm")[0].reset();
                    $("#error_login").text("");
                    window.location.href = '/libros';
                },
                error: function (e) {
                    $("#error_login").css("display", "block");
                    $("#error_login").text("Credenciales incorrectas");
                    $("#error_login").delay(3000)
                        .fadeOut("slow", function () {
                            setTimeout(function () {
                                location.reload();
                            }, 1000);
                        });
                },
            });
        }
    });
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
        //Se verifica que los campos obligatorios se encuentren llenos para enviar los datos al servidor
        if (cedula === "" || nombre === "" || apellido === "" || email === "" || contrasenya === "") {
            $("#error1").css("display", "block");
            $("#error1").text("Llene todos los campos");
            $("#error1").delay(3000)
                .fadeOut("slow", function () {
                    setTimeout(function () {
                        location.reload();
                    }, 1000);
                });
        } else {
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
                    $("body").fadeOut(400, function () {
                        location.reload();
                    });
                },
                error: function (xhr, textStatus) {
                    alert("Error al eliminar el usuario");
                },
            });
        }
    });
    $("#crearLibro").on("click", function () {
        $("#crearLibro").prop("disabled", true);
        var titulo = $("#title").val();
        var publicacion = $("#year").val();
        var descripcion = $("#description").val();
        var disponibilidad = $("#stock").val();
        var autor_id = $("#autor").val();
        var genero_id = $("#genero").val();
        var editorial_id = $("#editorial").val();
        //Se verifica que los campos obligatorios se encuentren llenos
        if (titulo === "" || publicacion === "" || descripcion === "" || disponibilidad === ""
            || autor_id === "" || genero_id === "" || editorial_id === "") {
            $("#error3").css("display", "block");
            $("#error3").text("Llene todos los campos");
            $("#error3").delay(3000)
                .fadeOut("slow", function () {
                    setTimeout(function () {
                        location.reload();
                    }, 1000);
                });
        } else {
            $.ajax({
                type: "POST",
                data: {
                    titulo: titulo,
                    publicacion: publicacion,
                    descripcion: descripcion,
                    disponibilidad: disponibilidad,
                    autor_id: autor_id,
                    genero_id: genero_id,
                    editorial_id: editorial_id
                },
                url: "/libros/agregar",
                success: function (data) {
                    $("#form3")[0].reset();
                    $("#error3").text("");
                    $("#success3").css("display", "block");
                    $("#success3").text("Libro creado");
                    $("#success3").delay(2000).fadeOut("slow");
                },
                error: function (e) {
                    $("#error3").css("display", "block");
                    $("#error3").text("Error al agregar el libro");
                    $("#error3").delay(3000)
                        .fadeOut("slow", function () {
                            setTimeout(function () {
                                location.reload();
                            }, 1000);
                        });
                },
            });
        }
    });
    $("#editBook").on("click", function () {
        $("#editBook").prop("disabled", true);
        var titulo = $("#title2").val();
        var publicacion = $("#year2").val();
        var descripcion = $("#description2").val();
        var disponibilidad = $("#stock2").val();
        var autor_id = $("#autor2").val();
        var genero_id = $("#genero2").val();
        var editorial_id = $("#editorial2").val();
        var libro_id = $(this).data("id");
        $.ajax({
            type: "PUT",
            url: "/libros/update/" + libro_id,
            data: {
                titulo: titulo,
                publicacion: publicacion,
                descripcion: descripcion,
                disponibilidad: disponibilidad,
                autor_id: autor_id,
                genero_id: genero_id,
                editorial_id: editorial_id
            },
            success: function (data, statusText, xhr) {
                $("#form4")[0].reset();
                $("#error4").text("");
                $("#success4").css("display", "block");
                $("#success4").text("Libro actualizado");
                $("#success4").delay(2000).fadeOut("slow");
            },
            error: function (e) {
                $("#error4").css("display", "block");
                $("#error4").text("Llene todos los campos");
                $("#error4")
                    .delay(3000)
                    .fadeOut("slow", function () {
                        setTimeout(function () {
                            location.reload();
                        }, 500);
                    });
            },
        });
    });
    $(".deleteBook").on("click", function() {
        var libro_id = $(this).data("id");
        if (confirm("¿Desea eliminar el libro?")) {
            $.ajax({
                url: "/libros/eliminar/" + libro_id,
                type: "DELETE",
                success: function (e) {
                    $("body").fadeOut(400, function () {
                        location.reload();
                    });
                },
                error: function (xhr, textStatus) {
                    alert("El libro está asociado a préstamos");
                },
            });
        }
    });
});
