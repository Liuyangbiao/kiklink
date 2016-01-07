//用户注册

function checkusername(id) {
	var v = $('#' + id).val();
	if (v == null || v == '') {
		document.getElementById(id).className = "input-wrong";
		return false;
	}
	else {
		document.getElementById(id).className = "input-ok";
	}
	
	return true;
}

function checkpassword(id) {
	var v = $('#' + id).val();
	if (v == null || v == '') {
		document.getElementById(id).className = "input-wrong";
		return false;
	}
	else {
		document.getElementById(id).className = "input-ok";
	}
	
	return true;
}

function checkemail(id) {
	var v = $('#' + id).val();
	if (v == null || v == '') {
		document.getElementById(id).className = "input-wrong";
		return false;
	}
	else {
		document.getElementById(id).className = "input-ok";
	}
	
	return true;
}

function reguser() {
	var v1 = checkusername("username");
	var v2 = checkpassword("passwd");
	var v3 = checkemail("email");

	if (v1 && v2 && v3) {
	$.post("http://localhost/glo/TbAllUser/create.do", 
			{"username":$('#username').val(),"passwd":$('#passwd').val(),"email":$('#email').val()}, 
			function (data) {
				data = eval('('+data+')');
				if (data['result'] == 0) {
					alert("注册成功");
				}			
		});
	}
}

