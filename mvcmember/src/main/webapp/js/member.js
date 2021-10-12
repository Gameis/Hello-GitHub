//JavaScript


function checkLogin(){
	
	document.getElementById("idDiv").innerText = "";
	document.getElementById("pwdDiv").innerText = "";
	
	if(document.getElementById("id").value == "")
		document.getElementById("idDiv").innerText = "아이디를 입력해주세요";
	else if(document.getElementById("pwd").value == "")
		document.getElementById("pwdDiv").innerText = "비밀번호를 입력해주세요";
	else
		document.loginForm.submit();		
}

function checkId() {
	
	if(document.getElementById("id").value == "")
	{
		document.getElementById("idDiv").innerText = "먼저 아이디 입력";		
	}
	else
	{	
		window.open("http://localhost:8080/mvcmember/member/checkId.do?id=" + document.getElementById("id").value, "angel", "width=400 height=200");
	}
	
}

function useId(id) {
	
	opener.document.getElementById("id").value = id;
	opener.document.getElementById("idtf").value = "true";
	opener.document.getElementById("idDiv").innerText = "";
	close();
}

function reCheck() {
	document.getElementById("idtf").value = "false";
}

function checkPost() {
	window.open("/mvcmember/member/checkPost.do", 
               "checkPost",
               "width=500 height=500 top=200 left=700");
}

function checkWrite(){
	document.getElementById("nameDiv").innerText = "";
	document.getElementById("idDiv").innerText = "";
	document.getElementById("pwdDiv").innerText = "";
	document.getElementById("repwdDiv").innerText= "";
	
	if(document.writeForm.name.value == "") 
		document.getElementById("nameDiv").innerText = "이름을 입력해주세요";
	else if(document.writeForm.id.value == "")
		document.getElementById("idDiv").innerText = "아이디를 입력해주세요";
	else if(document.writeForm.pwd.value == "")
		document.getElementById("pwdDiv").innerText = "비밀번호를 입력해주세요";
	else if(document.writeForm.pwd.value != document.writeForm.repwd.value)
		document.getElementById("repwdDiv").innerText = "비밀번호가 맞지 않습니다";
	else if(document.getElementById("idtf").value == "false")
		document.getElementById("idDiv").innerText = "중복체크하세요"
	else
		document.writeForm.submit();
}








































