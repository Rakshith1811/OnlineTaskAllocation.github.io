<%@ include file="employeeheader.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Issue Details<br> </h2>
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
           

            <form action="issuedetails.jsp" method="post" role="form" class="contactForm">

              <div class="row">
              <div class="span4 form-group">
                  <input type="text" name="title" class="form-control" id="title" placeholder="Enter title" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
                 <div class="span4 form-group">Description:<br>
                  <textarea rows="12" name="desc" class="form-control" id="desc" placeholder=" Enter description" data-rule="minlen:4" data-msg="Please enter at least 4 chars"></textarea>
                  <div class="validation"></div>
                </div> <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                
               <div class="span4 form-group">
                      <select name="categiry">
					  
                         <option value="-1">select categiry</option>
                           <option value="hardware">Hardware</option>
                         <option value="software">software</option>                              
                         </select><div class="validation"></div>
                    </div><br><br><br>
                  <div class="span4 form-group">
                      <select name="priority">
					  
                         <option value="-1">select priority</option>
                           <option value="high">High</option>
                         <option value="medium">Medium</option>
                         <option value="low">Low</option>                              
                         </select><div class="validation"></div>
                    </div><br><br><br>
                    
                   <div class="span4 form-group">
                      <select name="severity">
					  
                         <option value="-1">select severity</option>
                           <option value="high">High</option>
                         <option value="medium">Medium</option>
                         <option value="low">Low</option>                              
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
   <%@ include file="employeefooter.jsp" %>