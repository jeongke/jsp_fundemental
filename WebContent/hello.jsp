<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>jquery event</title>
    <script src="./js/jquery-3.6.0.js"></script>
    <script>
        $(function(){
            $('#id').focus();
            
            //$('#sendMember').click(function(){
            $('#sendMember').bind("click",function(event){
            //$('#sendMember').on("click",function(event){

                //원래의 기능을 못쓰게 한다.
                //submit 버튼의 기능 : action으로 페이지 이동
                event.preventDefault();
                
                //유효성 체크
                let id = $('#id').val();
                let email = $('#Email').val();
                let pwd = $('#pwd').val();

                if(id==""){
                    $('#errorId').css("display","block");
                    
                }else{
                    $('#ErrorId').css("displaay","none");
                }
                if(email==""){
                    $('#erroremail').css("display","block");
              
                }else{
                    $('#erroremail').css("displaay","none");
                }
                if(pwd==""){
                    $('#errorpwd').css("display","block");
              
                }else{
                    $('#Errorpwd').css("displaay","none");
                }
               
                if(id==""){
                    
                    $('#id').focus();
                    return;
                }
                if(email==""){
                    
                    $('#email').focus();
                    return;
                }
                if(pwd==""){
                  
                    $('#pwd').focus();
                    return;
                }

                //document.memberForm.submit();
                document.memberForm.action="/hello";
                document.memberForm.submit();

                console.log(id);
                console.log(email);
                console.log(pwd);

            });
        });
    </script>
    <style>
        .error{
            color : red;
        }
    </style>
</head>

<body>
    <h3>jquery event</h3>
    	
    	</div>
    <form name="memberForm" acction="save.html", method="post"></form>
    <form action='save.html' method='post'>
        <div>
            <label for="id">아이디</label>
            <input type="text" id="id" name="id" placeholder="아이디를 입력하세요">
            <span class="error" id="errorId" style="display:none;">아이디를 입력하세요</span>
        </div>
        <div>
            <label for="email">이메일</label>
            <input type="email" id="email" name="email" placeholder="이메일을 입력하세요">
            <span class="error" id="erroremail" style="display:none;">이메일을 입력하세요</span>
        </div>
        <div>
            <label for="pwd">비밀번호</label>
            <input type="pwd" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요">
            <span class="error" id="errorpwd" style="display:none;">비밀번호을 입력하세요</span>
        </div>
        <div>
            <button type="submit" id="sendMember">회원가입</button>
            <button type="reset">취소</button>
        </div>    
    </form>
</body>
</html>