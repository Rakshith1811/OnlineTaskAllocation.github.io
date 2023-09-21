<%@ include file="adminheader.jsp" %>
<%@ include file="connect.jsp" %>
<body>
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
    <%       
	String id=request.getParameter("id");
    %>
            <form action="response.jsp" method="post" role="form" class="contactForm">

              <div class="row">
              <div class="span4 form-group">
                  <input type="text" name="id" class="form-control" id="id" value="<%= id %>" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
                                  <div class="span4 form-group"></div>Response:<br>
                  <textarea rows="12" name="response" class="form-control" id="response" placeholder=" Enter response" data-rule="minlen:4" data-msg="Please enter at least 4 chars"></textarea>
                  <div class="validation"></div>
                 <br><br><br><br><br><br><br><br><br>
                     
                 <div class="span4 form-group">
                      <select name="status">
					  
                         <option value="-1">select status</option>
                           <option value="fixed">fixed</option>
                         <option value="not fixed">not fixed</option> 
                                                       
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