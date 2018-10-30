<br>
<br>
<h1>Add Category </h1>

<br>
<div class="w3-card-4">
<form action="../admincat" method="POST">
          <input type="text" class="w3-input" name="mname" placeholder="Room Type"><br>
          <input type="text" class="w3-input" name="minfo" placeholder="Room Info"><br>
          <input type="text" class="w3-input" name="mprice" placeholder="Room Price"><br>
          <input type="email" class="w3-input w3-rate w3-hide" name="memail" value="<%=session.getAttribute("email")%>" placeholder="email"><br>
          <input type="rate" class="w3-input w3-rate" name="mrate" placeholder="Room Type ex:AC/Non AC"><br>
          <input type="submit" class="w3-red w3-input" value="Add Room Type" name="submit"><br>
          
</form>
</div>