    function validateForm(form) {
   
      let regExpId = /^[a-z0-9]/;
      let regExpName = /^[가-힣]*$/;
      let regExpPhone = /^[0-9]*$/;
      let regExpBirth = /^[1,2][0,9][0-9][0-9][0,1][0-9][0-3][0-9]*$/;
      let regExpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
      
       
      if(form.id.value == "") {
         alert("아이디를 입력하세요");
         form.id.focus();
         return false;
      }
       
      if(form.id.value.length < 4 || form.id.value.length  > 15) {
         alert("아이디를 4~15글자 이내로 입력하세요")
         form.id.focus();
         return false;
      }
        
      if(!regExpId.test(form.id.value)) {
         alert("아이디는 영어소문자+숫자 조합으로 입력하세요");
         form.id.focus();
         return false;
      }
       
      if(form.pw.value == "") {
         alert("비밀번호를 입력하세요");
         form.pw.focus();
         return false;
      }
       
      if(form.pw.value.length < 8) {
         alert ("비밀번호는 8자리 이상의 문자를 입력하세요");
         form.pw.focus();
         return false;
      }
       
      if(form.pw.value != form.pw2.value) {
         alert ("비밀번호가 일치하지 않습니다")
         form.pw2.focus();
         return false;
      }
       
      if(form.name.value == "") {
         alert("이름을 입력하세요");
         form.name.focus();
         return false;
      }
      
      if(!regExpName.test(form.name.value)) {
         alert("이름은 한글만 입력가능합니다");
         form.name.focus();
         return false;
      }
      
      if(form.birth.value == "") {
         alert("생년월일을 입력하세요");
         form.birth.focus();
         return false;
      }
      
      if(!regExpPhone.test(form.birth.value)) {
         alert("생년월일은 숫자만 입력가능합니다");
         form.birth.focus();
         return false;
      }
      
      if(form.birth.value.length != 8) {
         alert("생년월일을 8자리 형식으로 입력하세요");
         form.birth.focus();
         return false;
      }
      
      if(!regExpBirth.test(form.birth.value)) {
         alert("생년월일이 올바르지 않습니다.");
         form.birth.focus();
         return false;
      }
      
      if(form.email.value == "") {
         alert("이메일을 입력하세요");
         form.email.focus();
         return false;
      }
      
      if(!regExpEmail.test(form.email.value)) {
         alert("이메일 형식이 맞지 않습니다");
         form.email.focus();
         return false;
      }
      
      if(form.tel.value == "") {
         alert("휴대폰 번호를 입력하세요");
         form.tel.focus();
         return false;
      }
      
      if(!regExpPhone.test(form.tel.value)) {
         alert("휴대폰 번호는 숫자만 입력가능합니다");
         form.tel.focus();
         return false;
      }
      
      if(form.tel.value.length != 11) {
         alert ("휴대폰 번호를 정확하게 입력하세요");
         form.tel.focus();
         return false;
      }
         
   
      
   }