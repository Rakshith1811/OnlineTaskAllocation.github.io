<%@ include file="adminheader.jsp" %>
    <%@ include file="connect.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Add Project Details<br> </h2>
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
           

            <form action="projectdetails.jsp" method="post" role="form" class="contactForm">

              <div class="row">
              <div class="span4 form-group">
                  <input type="text" name="title" class="form-control" id="title" placeholder="Enter title" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
                <div class="span4 form-group">
                  <textarea rows="12" name="desc" class="form-control" id="desc" placeholder=" Enter description" data-rule="minlen:4" data-msg="Please enter at least 4 chars"></textarea>
                  <div class="validation"></div>
                </div> <br><br><br><br><br><br><br><br><br><br><br><br>
                
                 <div class="span4 form-group">FROMDATE:<br>
                  <input type="date" id="fromdate" name="fromdate" />
               <div class="validation"></div> </div><br><br><br>
              
               <div class="span4 form-group"> TODATE:<br>
                  <input type="date" id="todate" name="todate" />
               <div class="validation"></div> </div><br><br><br>
               <div class="span4 form-group">
                  <input type="text" name="tech" class="form-control" id="tech" placeholder="Enter Technologies" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
              <div class="span4 form-group">Select Manager:<br>
                      <select name="managername">
					  <%
                          try{
							Statement st=con.createStatement();
							ResultSet rs=st.executeQuery("select empname from employeedata where role='manager'");

							while(rs.next()){
								out.println("<option>"+rs.getString(1)+"</option>");
								
							}
							con.close();
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
    <%@ include file="adminfooter.jsp" %>