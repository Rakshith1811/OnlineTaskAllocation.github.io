<%@ include file="managerheader.jsp" %>
<%@ include file="connect.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Add Task<br> </h2>
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
           

            <form action="addtaskdata.jsp" method="post" role="form" class="contactForm">

              <div class="row">
              <div class="span4 form-group">Select Project:<br>
                 <select name="projectname">
                 
                 <%
                 String name=session.getAttribute("name").toString();
                 try{
                	 Statement st=con.createStatement();
                	 ResultSet rs=st.executeQuery("select title from addproject where managername='"+name+"'");
                	 while(rs.next()){
                		 out.println("<option>"+rs.getString(1)+"</option>");
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
							con.close();
                          }
					  catch(Exception e){
						  e.printStackTrace();
					  }
							 %> 
                         </select><div class="validation"></div>
                    </div><br><br><br>
                    <div class="span4 form-group">Description:<br>
                  <textarea rows="12" name="task" class="form-control" id="task" placeholder=" Enter description" data-rule="minlen:4" data-msg="Please enter at least 4 chars"></textarea>
                  <div class="validation"></div>
                </div> <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                     
                <div class="span4 form-group">FromDate:<br>
                  <input type="date" id="date" name="fromdate" />
               <div class="validation"></div> </div><br><br><br>
                <div class="span4 form-group">ToDate:<br>
                  <input type="date" id="date" name="todate" />
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