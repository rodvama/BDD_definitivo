$( document ).ready(function() {

	var jsonObject = {
		'action' : "SESSIONS"
	};

	$.ajax({
            type: "POST",
            url: "data/data.php",
            dataType: "json",
            data: jsonObject,
            contentType: "application/x-www-form-urlencoded",
            success: function(jsonRecieved) {
            	console.log("success");
            }),
			error: function(errorMsg){
				console.log(errorMsg.statusText);
			}
	});
});