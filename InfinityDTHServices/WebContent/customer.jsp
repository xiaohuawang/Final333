-<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:layout title="Infinity- Customer Registration">
   <jsp:attribute name="head">
	<link href="css/customer.css" rel="stylesheet">
	</jsp:attribute>
   <jsp:attribute name="body">
  <!-- ------------------------------------------------------------------------------ -->
      <div class="container theme-showcase" role="main">

      <body>
      <div class="accordion" id="searchAccordion">
      <div class="page-body">
      <div class="container">
         <h2>New Customer Registration</h2>
         <form method="post" action="customer" id="form">

            <div class="col-xs-6">
               <label for="inputlg">First Name:</label>
               <input class="form-control" id="firstName" value="${customer.firstName}" type="text" name="firstName" required autofocus>
            </div>
            <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">Last Name:</label>
               <input class="form-control" id="lastName" value="${customer.lastName}" type="text" name="lastName" required>
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">Email ID:</label>
               <input class="form-control" id="emailId" value="${customer.emailAddress}" type="text" name="emailId" required>
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">User Name:</label>
               <input class="form-control" id="UserName" type="text" name="userName" value="${user.username}" required>
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">Password:</label>
               <input class="form-control" id="passwword" type="password" name="password" value="${user.password}" required>
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">Confirm Password:</label>
               <input class="form-control" id="password" type="password" name="password" value="${user.password}" required>
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">Phone Number:</label>
               <input class="form-control" id="phoneNumber" type="text" value="${customer.emailAddress}" place name="phoneNumber" required>
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">Address:</label>
               <input class="form-control" id="address" type="text" name="address" placeholder="leave it blank" required>
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">Address1:</label>
               <input class="form-control" id="address1" type="text" name="address1" value="${address.address1}">
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">Address2:</label>
               <input class="form-control" id="address2" type="text" name="address2" value="${address.address2}">
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">Land Mark:</label>
               <input class="form-control" id="landMark" type="text" name="landMark" value="${address.landMark}">
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">Pin Code:</label>
               <input class="form-control" id="pinCode" type="text" name="pinCode" value="${address.pinCode}" required>
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="inputlg">City:</label>
               <input class="form-control" id="city" type="text" name="city" value="${address.city}" required>
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="sel2">State:</label>
               <select class="form-control" for="input-lg" id="state" name="state" value="${address.state}" required>
                  <option value="AL">Alabama</option>
                  <option value="AK">Alaska</option>
                  <option value="AZ">Arizona</option>
                  <option value="AR">Arkansas</option>
                  <option value="CA">California</option>
                  <option value="CO">Colorado</option>
                  <option value="CT">Connecticut</option>
                  <option value="DE">Delaware</option>
                  <option value="DC">District of Columbia</option>
                  <option value="FL">Florida</option>
                  <option value="GA">Georgia</option>
                  <option value="HI">Hawaii</option>
                  <option value="ID">Idaho</option>
                  <option value="IL">Illinois</option>
                  <option value="IN">Indiana</option>
                  <option value="IA">Iowa</option>
                  <option value="KS">Kansas</option>
                  <option value="KY">Kentucky</option>
                  <option value="LA">Louisiana</option>
                  <option value="ME">Maine</option>
                  <option value="MD">Maryland</option>
                  <option value="MA">Massachusetts</option>
                  <option value="MI">Michigan</option>
                  <option value="MN">Minnesota</option>
                  <option value="MS">Mississippi</option>
                  <option value="MO">Missouri</option>
                  <option value="MT">Montana</option>
                  <option value="NE">Nebraska</option>
                  <option value="NV">Nevada</option>
                  <option value="NH">New Hampshire</option>
                  <option value="NJ">New Jersey</option>
                  <option value="NM">New Mexico</option>
                  <option value="NY">New York</option>
                  <option value="NC">North Carolina</option>
                  <option value="ND">North Dakota</option>
                  <option value="OH">Ohio</option>
                  <option value="OK">Oklahoma</option>
                  <option value="OR">Oregon</option>
                  <option value="PA">Pennsylvania</option>
                  <option value="RI">Rhode Island</option>
                  <option value="SC">South Carolina</option>
                  <option value="SD">South Dakota</option>
                  <option value="TN">Tennessee</option>
                  <option value="TX">Texas</option>
                  <option value="UT">Utah</option>
                  <option value="VT">Vermont</option>
                  <option value="VA">Virginia</option>
                  <option value="WA">Washington</option>
                  <option value="WV">West Virginia</option>
                  <option value="WI">Wisconsin</option>
                  <option value="WY">Wyoming</option>
               </select>
            </div>
             <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
               <label for="sel1">Retailer Creation Date</label>
               <input class="form-control input-sm" type="date" name="date" id="theDate" readonly>
            </div>
             <br>
            <br>
            <br>
            <br>
            <div class="col-xs-6">
            	<input type="submit" class="btn btn-primary btn-lg btn-block" value="Submit">
            </div>
            <br>
            <br>
            <br>
         </form>
      </div>
      </div>
      </body>
   </jsp:attribute>
</t:layout> 