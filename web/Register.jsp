<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<style>
    
    *{
  margin:0;
  padding:0;
  }
 body{
       
    background-image: url(img/11.png);
    margin-top:40px;
    background-position:center;
   background-size:cover;
   font-family:sans-serif;
    }

   .regform{
          width:800px;
    background-color:rgb(0,0,0,0.6);
    margin:auto;
    color:#FFFFFF;
    padding:10px 0px 10px 0px;
    text-align:center;
    border-radius:15px 15px 0px 0px ;
    }  
  .main{
      background-color:rgb(0,0,0,0.5);
   width:800px;
   margin:auto;}
  
  form{
      padding:10px;
   
  } 
  
  #name{
       width:100%;
    height:100px;
    
    }  
  .name{
            margin-left:25px;
   margin-top:30px;
   width: 125px;
            color: white;
            font-size: 18px;
            font-weight: 700;}
.firstname{
                   position: relative;
       left:200px;
       top:-37px;
       line-height: 40px;
       border-radius: 6px;
       padding: 0 22px;
       font-size: 16px;
       
       }
.lastname{
             position: relative;
       left:417px;
       top:-80px;
       line-height: 40px;
       border-radius: 6px;
       padding: 0 22px;
       font-size: 16px;
       color:#555;       
                  }  
 .firstlabel{
            position:relative;
            color:#E5E5E5;    
      text-transform: capitalize;
   font-size: 14px;
   left:203px;
   top:-45px;
   }   
.lastlabel{
            position:relative;
   color:#E5E5E5;
   text-transform:capitalize;
   font-size:14px;
   left:492px;
   top:-76px;
     } 
.company{
           position:relative;
     left:200px;
     top:-37px;
     line-height: 40px;
     width:200px;
        border-radius: 6px;
     padding: 0 22px;
     font-size: 16px;
     color: #555;  }
 .email{
        position:relative;
  left:200px;
     top:-37px;
     line-height: 40px;
     width:480px;
        border-radius: 6px;
     padding: 0 22px;
     font-size: 16px;
     color: #555;  
    }     
 
   .Code{
         position:relative;
  left:200px;
     top:-37px;
     line-height: 40px;
     width:95px;
        border-radius: 6px;
     padding: 0 22px;
     font-size: 16px;
     color: #555;  
  }
 .pass{
         position:relative;
  left:200px;
     top:-37px;
     line-height: 40px;
     width:200px;
        border-radius: 6px;
     padding: 0 22px;
     font-size: 16px;
     color: #555; 
     }
 .area-code{
            position:relative;
      color:#E5E5E5;
      text-transform:capitalize;
      font-size:16px;
      left:54px;
      top:-4px;
     }
 .phone-number{
              position:relative;
      color:#E5E5E5;
      text-transform:capitalize;
      font-size:16px;
      left:-100px;
      top:-2px;
     }
 .option{
         position:relative;
  left:200px;
     top:-37px;
     line-height: 40px;
     width:532px;
     height:40px;
        border-radius: 6px;
     padding: 0 22px;
     font-size: 16px;
     color: #555; 
     outline:none;
     overflow:hidden;
  }    
     .option option{
                 font-size:20px;
       }
   #coustomer{
                margin-left:25px;
    color:white;
    font-size:18px;
    
      } 
     .radio{
         display:inline-block;
   padding-right:70px;
   font-size:25px;
   margin-left:25px;
   margin-top:15px;
   color:white;
   }
  .radio input{
              width:20px;
     height:20px;
     border-radius:50%;
     cursor:pointer;
     outline:none;
    } 
    button{
        background-color:#3BAF9F;
     display:block;
     margin:20px 0px 0px 20px;
     text-align:center;
     border-radius:12px;
     border:2px solid #366473;
     padding:14px 110px;
     outline:none;
     color:white;
     cursor:pointer;
     transition:0.25px;
    } 
   button:hover{
                background-color:#5390F5;
      }  
    
    
    
</style>
<body>
    <div class="regform">
        <h1> Registration Form</h1>
</div>
<div class="main">
    
        <form action="RegisterServlet" method="POST" >
            
            
            <div id="name">
                <h2 class="name">Name </h2>
                
<input class="firstname" type="text" name="first_name"><br>
                <label class="firstlabel">first name</label>
                <input class="lastname" type="text" name="last_name"><br>
                <label class="lastlabel">last name</label>
            </div>

            <h2 class="name">Email</h2>
<input class="email" type="email" name="email">

<h2 class="name">User Name</h2>
<input class="company" type="text" name="uname">

            <h2 class="name">Password</h2>
            <input class="company" type="password" name="pass" id="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
            
    
<!--            <h2 class="name">Profile Photo</h2>
            <input class="form-control" type="file" name="photo">-->
    
            <button type="submit" onclick="CheckPassword(document.form1.text1)">Register</button>
    
    
        </form>
        </form>
        
        <div id="message">
<!--  <h3>Password must contain the following:</h3>-->
<!--  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>-->
</div>
</div>
   <script>
var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>

    
</body>
</html>