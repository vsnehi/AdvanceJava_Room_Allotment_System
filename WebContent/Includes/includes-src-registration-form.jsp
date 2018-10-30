<h2 style="color:white"><b>Join Now</b></h2>




 
<form method="post" action="CreateUserCookie">
<div class="Join container" id="fn">
<div class="container table form">
             <div class="input-group" style="margin-top:20%;">
                                      <span class="input-group-addon" id="basic-addon1">Username Email</span>
                                      <input type="text" class="form-control" id="basic-url"  aria-describedby="basic-addon1" placeholder="user@example.com" name="username"></input>
             </div>
             <br></br><br></br>
               <div class="container">
               <input type="submit" class="btn-success btn form-control" value="Login Register" onclick="account()"></input>
               </div>
</div>
</div>
</form>



 



<script>
function account() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("fn").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "NewUser.jsp", true);
	  xhttp.send();
	}

</script>