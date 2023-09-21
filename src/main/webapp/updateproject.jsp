<%@ include file="adminheader.jsp" %>
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
	ResultSet rs=st.executeQuery("select * from addproject where id='"+ id+"' ");
	int count=0;
	while(rs.next()){

		String title=rs.getString(2);
		String desc=rs.getString(3);
		String fromdate=rs.getString(4);
		String todate=rs.getString(5);
		String tech=rs.getString(6);
		String managername=rs.getString(7);
		
		
	
%>
     <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
           

            <form action="updateprojectdetails.jsp" method="post" role="form" class="contactForm">

            <div class="row">
              <div class="span4 form-group">
                  <input type="text" name="id" value="<%= id %>" required readonly class="form-control" id="id" placeholder="Enter empid" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
              
              <div class="span4 form-group">
                  <input type="text" name="title" value="<%= title %>" required class="form-control" id="title" placeholder="Enter title" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
                <div class="span4 form-group">
                  <textarea rows="12" name="desc"  required class="form-control" id="desc" placeholder=" Enter description" data-rule="minlen:4" data-msg="Please enter at least 4 chars"><%= desc %></textarea>
                  <div class="validation"></div>
                </div> <br><br><br><br><br><br><br><br><br><br><br><br>
                
                 <div class="span4 form-group">FROMDATE:<br>
                  <input type="date" id="fromdate" name="fromdate" value="<%= fromdate %>" required />
               <div class="validation"></div> </div><br><br><br>
              
               <div class="span4 form-group"> TODATE:<br>
                  <input type="date" id="todate" name="todate" value="<%= todate %>" required/>
               <div class="validation"></div> </div><br><br><br>
               <div class="span4 form-group">
                  <input type="text" name="tech" value="<%= tech %>" required class="form-control" id="tech" placeholder="Enter Technologies" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
              <div class="span4 form-group">Select Manager:<br>
                      <select name="managername">
					  <%
                          try{
							Statement st1=con.createStatement();
							ResultSet rs1=st1.executeQuery("select empname from employeedata where role='manager'");

							while(rs1.next()){
								%>
									<option <%= (rs1.getString(1).equals(managername)?"selected='selected'":"") %>><%=rs1.getString(1) %></option>
								<% 
							}
                          }
					  catch(Exception e){
						  e.printStackTrace();
					  }
							 %> 
                         </select><div class="validation"></div>
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
    <%@ include file="adminfooter.jsp" %>