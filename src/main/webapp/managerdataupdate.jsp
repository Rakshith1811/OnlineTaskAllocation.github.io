<%@ include file="managerheader.jsp" %>
<%@ include file="connect.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Update manager Details<br> </h2>
            </div>
          </div>
        </div>
      </div> </section><br><br>
      <%
	
String id=session.getAttribute("id").toString();
      String email=session.getAttribute("email").toString();

try{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from employeedata where id='"+ id+"' ");
	int count=0;
	while(rs.next()){

		String empid=rs.getString(2);

		String empname=rs.getString(3);
		String jobrole=rs.getString(4);
		String doj=rs.getString(7);
		Float salary=rs.getFloat(8);
		String gender=rs.getString(9);
		
	
%>
<section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
 <form action="managerdetailsupdate.jsp" method="post" role="form" class="contactForm">

              <div class="row">
              <div class="span4 form-group">
                  <input type="text" name="empid" value=<%= empid %> class="form-control" id="empid" required placeholder="Enter empid" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
                <div class="span4 form-group">
                  <input type="text" name="empname" value=<%= empname %> class="form-control" required id="empname" placeholder=" Enter empName" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div> <br><br><br>
                
               <div class="span4 form-group">
                      <select name="jobrole" required>
					  
                         <option value=-1>select job role</option>
                           <option value="software developer" <%= (jobrole.equals("software developer")?"selected='selected'":"") %>>software developer</option>
                         <option value="testing" <%= (jobrole.equals("testing")?"selected='selected'":"")%>>testing</option>
                           <option value="front end develpoer"  <%= (jobrole.equals("front end develpoer")?"selected='selected'":"")%>>front end developer</option>
                          <option value="android developer"  <%= (jobrole.equals("android developer")?"selected='selected'":"")%>>android developer</option>
                            
                         </select><div class="validation"></div>
                    </div><br><br><br>
                  
                <div class="span4 form-group">
                  <input type="email" name="email" class="form-control" value=<%= email %> required  readonly id="email" placeholder="Enter Email" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>              
                 <div class="span4 form-group">
                  <input type="date" id="doj" name="doj" value=<%= doj %> required />
               <div class="validation"></div> </div><br><br><br>
                <div class="span4 form-group">
                  <input type="text" name="salary" class="form-control" id="salary"  value=<%= salary %> required placeholder="Enter your salary" data-rule="minlen:4" data-msg="Please enter at least 10 digits" />
                  <div class="validation"></div>
                </div><br><br><br>
                
               <div class="span4 form-group ">Gender:<br>
                      <input type="radio" name="gender" value="male" <%= (gender.equals("male")?"checked='checked'":"") %> />male
                      <input type="radio" name="gender"value="female" <%= (gender.equals("female")?"checked='checked'":"") %> />female
                     <input type="radio" name="gender"value="others" <%= (gender.equals("others")?"checked='checked'":"") %> />others<br>  </div>
                <br><br><br> <p class="text-left">
                    <button class="btn btn-large btn-theme margintop10" type="submit">UPDATE</button>
                  </p>
                </div></form>
                 </div>
        </div>
      </div>
    </section>
<%
	}
	con.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}

%>
<%@ include file="managerfooter.jsp" %>