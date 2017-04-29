$( document ).ready(function() {
    $( "#login-Button").click(function(){

        var user = $("#username").val();
        var password = $("#pass").val();

        var jsonObjectLogin = {
            'action' : "LOGIN",
            'user'    : user,
            'pass1'  : password
        };

        $.ajax({
            type: "POST",
            url: "data/data.php",
            dataType: "json",
            data: jsonObjectLogin,
            contentType: "application/x-www-form-urlencoded",
            success: function(jsonRecieved) {


                console.log(jsonRecieved);

                if (jsonRecieved.status == "SUCCESS"){
                    alert("AHUEVOOO"); //SU CODIGO AQUI
                    window.location.replace("projects.html");

                }
                else
                    alert("WRONG");
            },
            error: function(errorMsg){
                console.log(errorMsg);
            }
        });
    });
});
