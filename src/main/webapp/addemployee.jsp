<%@ include file="managerheader.jsp" %>
<%@ include file="connect.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Add Project To Employee<br> </h2>
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
           

            <form action="addemployeedetails.jsp" method="post" role="form" class="contactForm">

              <div class="row">
              <div class="span4 form-group">
                 <select name="projectid">
                 
                 <%
                 String name=session.getAttribute("name").toString();
                 try{
                	 Statement st=con.createStatement();
                	 ResultSet rs=st.executeQuery("select id from addproject where managername='"+ name+"' ");
                	 while(rs.next()){
                		 out.println("<option>"+rs.getInt(1)+"</option>");
                	 }
                	 
                 }catch(Exception e){
                	 e.printStackTrace();
                 }
                 
                 %>
                 </select>
                  <div class="validation"></div>
                </div><br><br><br>
               
               
              <div class="span4 form-group">Select email:<br>
                      <select name="email">
					  <%
                          try{
							Statement st1=con.createStatement();
							ResultSet rs1=st1.executeQuery("select email from employeedata where role='employee'");

							while(rs1.next()){
								out.println("<option>"+rs1.getString(1)+"</option>");
								
							}
                          }
					  catch(Exception e){
						  e.printStackTrace();
					  }
							 %> 
                         </select><div class="validation"></div>
                    </div><br><br><br>
                    
                     <div class="span4 form-group">Select role:<br>
                      <select name="jobrole">
					  <%
                          try{
							Statement st2=con.createStatement();
							ResultSet rs2=st2.executeQuery("select jobrole from employeedata where role='employee'");

							while(rs2.next()){
								out.println("<option>"+rs2.getString(1)+"</option>");
								
							}
                          }
					  catch(Exception e){
						  e.printStackTrace();
					  }
							 %> 
                         </select><div class="validation"></div>
                    </div><br><br><br>
                <div class="span4 form-group">
                  <input type="date" id="validupto" name="validupto" />
               <div class="validation"></div> </div><br><br><br>
                <p class="text-left">
                    <button class="btn btn-large btn-theme margintop10" type="submit">Submit</button>
                  </p>
                </div>
            </form>
            
          </div>
        </div>
      </div>
    </section>
   <%@ include file="managerfooter.jsp" %>