    <%@ include file="homeheader.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Employee Login</h2>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
           

            <form action="employeelogindata.jsp" method="post" role="form" class="contactForm">

              <div class="row">
                <div class="span4 form-group">
                  <input type="email" name="email" class="form-control" id="email" placeholder="Enter email" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
                <div class="span4 form-group">
                  <input type="text" name="password" class="form-control" id="password" placeholder="Enter Password" data-rule="minlen:4" data-msg="enter valid password" />
                  <div class="validation"></div>
                </div><br><br>
                 <p class="text-left">
                    <button class="btn btn-large btn-theme margintop10" type="submit">Login</button>
                  </p>
                </div>
            </form>
            
          </div>
        </div>
      </div>
    </section>
       <%@ include file="homefooter.jsp" %>