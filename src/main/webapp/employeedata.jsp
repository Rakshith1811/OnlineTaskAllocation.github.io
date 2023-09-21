<%@ include file="adminheader.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Employee Details<br> </h2>
            </div>
          </div>
        </div>
      </div>
    </section>
    <br><br>
     <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
           

            <form action="employeedetails.jsp" method="post" role="form" class="contactForm">

              <div class="row">
              <div class="span4 form-group">
                  <input type="text" name="empid" class="form-control" id="empid" placeholder="Enter empid" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
                <div class="span4 form-group">
                  <input type="text" name="empname" class="form-control" id="empname" placeholder=" Enter empName" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div> <br><br><br>
                
               <div class="span4 form-group">
                      <select name="jobrole">
					  
                         <option value="-1">select job role</option>
                           <option value="software developer">software developer</option>
                         <option value="testing">testing</option>
                           <option value="front end develpoer">front end develpoer</option>
                          <option value="android developer">android developer</option>
                            
                         </select><div class="validation"></div>
                    </div><br><br><br>
                  
                <div class="span4 form-group">
                  <input type="email" name="email" class="form-control" id="email" placeholder="Enter Email" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
                <div class="span4 form-group">
                  <input type="text" name="password" class="form-control" id="password" placeholder="Enter Password" data-rule="minlen:4" data-msg="enter valid password" />
                  <div class="validation"></div>
                </div><br><br><br>
                 <div class="span4 form-group">
                  <input type="date" id="doj" name="dateofjoining" />
               <div class="validation"></div> </div><br><br><br>
                <div class="span4 form-group">
                  <input type="text" name="salary" class="form-control" id="salary" placeholder="Enter your salary" data-rule="minlen:4" data-msg="Please enter at least 10 digits" />
                  <div class="validation"></div>
                </div><br><br><br>
                
               <div class="span4 form-group">Gender:<br>
                      <input type="radio" name="gender" value="male" class="form-control" id="salary" placeholder="select gender" data-rule="minlen:4" data-msg="Please enter at least 4 chars">male
                      <input type="radio" name="gender"value="female"class="form-control" id="salary" placeholder="select gender" data-rule="minlen:4" data-msg="Please enter at least 4 chars">female
                     <input type="radio" name="gender"value="others"class="form-control" id="salary" placeholder="select gender" data-rule="minlen:4" data-msg="Please enter at least 4 chars">others<br>  </div>
                <br><br><br> 
                <div class="span4 form-group">
                      <select name="role">
					  
                         <option value="-1">select role</option>
                           <option value="manager">Manager</option>
                         <option value="employee">Employee</option>
                           
                         </select><div class="validation"></div>
                    </div><br><br><br>
                
                <p class="text-left">
                    <button class="btn btn-large btn-theme margintop10" type="submit">Add</button>
                  </p>
                </div>
            </form>
            
          </div>
        </div>
      </div>
    </section>
    <%@ include file="adminfooter.jsp" %>