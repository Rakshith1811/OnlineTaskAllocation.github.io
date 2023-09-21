<%@ include file="employeeheader.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>welcome to <%= session.getAttribute("email") %><br> </h2>
            </div>
          </div>
        </div>
      </div>
    </section>
    <br><br>
   <%@ include file="employeefooter.jsp" %>