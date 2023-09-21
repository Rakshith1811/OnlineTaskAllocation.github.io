<%@ include file="adminheader.jsp" %>
<section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Admin Change Password</h2>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
           

            <form action="adminchangepassword.jsp" method="post" role="form" class="contactForm">

              <div class="row">
                <div class="span4 form-group">
                  <input type="password" name="old" class="form-control" id="uname" placeholder="Enter old password" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div><br><br><br>
                <div class="span4 form-group">
                  <input type="password" name="new" class="form-control" id="password" placeholder="emter new Password" data-rule="minlen:4" data-msg="enter valid password" />
                  <div class="validation"></div>
                </div><br><br>
                 <p class="text-left">
                    <button class="btn btn-large btn-theme margintop10" type="submit">Change Password</button>
                  </p>
                </div>
            </form>
            
          </div>
        </div>
      </div>
    </section>
    <%@ include file="adminfooter.jsp" %>