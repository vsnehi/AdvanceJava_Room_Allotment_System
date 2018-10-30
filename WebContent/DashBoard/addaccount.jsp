<br><br>
<h1>Add Account</h1> 
 
 <form class="w3-container w3-card-4" action="../adminregister" method="POST">
        <div class="w3-section">
         
         <div class="icon1">
          <select class="w3-input w3-border w3-margin-bottom" style="font-family:cursive;"  name="UserType">
          <option value="Land Loard" class="main-content-agile  w3-margin-bottom w3-padding active">LandLoard</option>
          <option value="Room Renter" class="main-content-agile  w3-margin-bottom w3-padding">Room Renter</option>
          <option value="Admin" class="main-content-agile  w3-margin-bottom w3-padding">Admin</option>
          </select>
        </div>
                
         
          <div class="icon1">
           <input class="w3-input w3-border w3-margin-bottom" type="email" placeholder="Email" name="email" required style=" font-family:cursive;">
          </div>

          
          <div class="icon1">
           <input class="w3-input w3-border w3-round-xxlarge" type="password" placeholder="Password" name="password" style="font-family:cursive;" required>
          </div>

         
         <div class="icon1">
           <input class="w3-input w3-border w3-round-xxlarge" type="text" placeholder="Full Name" name="name" style="font-family:cursive;" required>
         </div>
         <div class="icon1">
           <input class="w3-input w3-border w3-round-xxlarge" type="date" placeholder="Date Of Birth" name="dob" style="font-family:cursive;" required>
          </div>
          
          <div class="icon1">
           <input class="w3-input w3-border w3-round-xxlarge" type="number" placeholder="Mobile Number" name="mobile" style="font-family:cursive;" required>
          </div>
          
          <div class="icon1">
           <input class="w3-input w3-border w3-round-xxlarge" type="text" placeholder="Home Address" name="address" style="font-family:cursive;" required>
          </div>
       
         
         <div class="row">
         <div class="col-xs-12">
         <div class="col-xs-6">
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> <font style="color:green;">Remember me</font>
          </div>
         
         
         
         
          <div class="col-xs-6">
        <div class="icon1">
        <label style="color:red;font-family:cursive;" for="male"><b>Male</b></label>
        <input class="w3-border" type="radio" placeholder="Male" name="gender" id="male" value="male" style="color:red;font-family:cursive;" required="">&nbsp;
        <label style="color:red;font-family:cursive;" for="female"><b>Female</b></label>
        <input class="w3-border" type="radio" placeholder="Female" name="gender" id="female" value="female" style="color:red;font-family:cursive;" required="">
         </div>
         </div>
         </div>
        </div>
        
         <input type="submit" name="submit" value="Register now" class="w3-button w3-block w3-green w3-section w3-padding" >
          
</div>
      </form>