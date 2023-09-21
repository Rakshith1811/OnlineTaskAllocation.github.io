<%@ include file="managerheader.jsp" %>
<%@ include file="connect.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Edit Project Details<br> </h2>
            </div>
          </div>
        </div>
      </div>
    </section>
    <br><br>
          <%
	String id=request.getParameter("id");


try{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from addemployee where id='"+ id+"' ");
	int count=0;
	while(rs.next()){

		String projectid=rs.getString(2);
		String email=rs.getString(3);
		String jobrole=rs.getString(4);
		String validupto=rs.getString(5);
		
		
		
	
%>
     <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
           

            <form action="updateemployeedetails1.jsp" method="post" role="form" class="contactForm">

            <div class="row">
              <div class="span4 form-group">
                  <input type="text" name="id" value="<%= id %>" required readonly class="form-control" id="id" placeholder="Enter empid" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
               <div class="span4 form-group">Select projectid:<br>
                      <select name="projectid">
                      
					  <%
					  String name=session.getAttribute("name").toString();
                          try{
							Statement st1=con.createStatement();
							ResultSet rs1=st1.executeQuery("select id from addproject where managername='"+name+"'");

							while(rs1.next()){
								%>
									<option <%= (rs1.getString(1).equals(projectid)?"selected='selected'":"") %>><%=rs1.getString(1) %></option>
								<% 
							}
							 
                          }
                         
					  catch(Exception e){
						  e.printStackTrace();
					  }
							 %> 
                         </select><div class="validation"></div>
                    </div><br><br><br>
             
              <div class="span4 form-group">Select email:<br>
                      <select name="email">
					  <%
                          try{
							Statement st2=con.createStatement();
							ResultSet rs2=st2.executeQuery("select email from employeedata where role='employee'");

							while(rs2.next()){
								%>
									<option <%= (rs2.getString(1).equals(email)?"selected='selected'":"") %>><%=rs2.getString(1) %></option>
								<% 
							}
							
                          }
					  catch(Exception e){
						  e.printStackTrace();
					  }
							 %> 
                         </select><div class="validation"></div>
                    </div><br><br><br>
                    <div class="span4 form-group">Select jobrole:<br>
                      <select name="jobrole">
					  <%
                          try{
							Statement st3=con.createStatement();
							ResultSet rs3=st3.executeQuery("select jobrole from employeedata where role='employee'");

							while(rs3.next()){
								%>
									<option <%= (rs3.getString(1).equals(jobrole)?"selected='selected'":"") %>><%=rs3.getString(1) %></option>
								<% 
							}
							
                          }
					  catch(Exception e){
						  e.printStackTrace();
					  }
							 %> 
                         </select><div class="validation"></div>
                    </div><br><br><br>
                     <div class="span4 form-group">
                  <input type="date" name="validupto" value="<%= validupto %>" required class="form-control" id="id" placeholder="Enter empid" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
                
                <p class="text-left">
                    <button class="btn btn-large btn-theme margintop10" type="submit">Submit</button>
                  </p>
                
                </div>
            </form>
            
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