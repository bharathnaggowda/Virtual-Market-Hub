<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel='stylesheet' href='/stylesheets/style.css' />
    <link rel='stylesheet' href='//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css' />
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css" />
<title>Sign up</title>
</head>
<body background="http://10steps.sg/wp-content/uploads/2012/11/White-christmas-light-background.jpg">
<nav class="navbar navbar-default">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="/"><img src="http://media.merchantcircle.com/19482392/Onlineshoppe_full.gif"  height="100" width="200"></a>
      </div>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/login"><i class="fa fa-check"></i> login</a></li>
      </ul>
    </div>
 </nav>   
</hr>
<div class="container" id="wrap">
	  <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form:form method="post" action="add" commandName="user">   <h2 style="color:Blue"><b><i>Sign Up</b></i></h2>
                    <h4 style="color:blue"><i>Create your virtualMarketPlace Account today !!</i></h4>
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <form:label path="firstname" ><spring:message code="label.firstname"/></form:label>
       					    <form:input path="firstname" class="form-control input-lg" />               
                       </div>
                        <div class="col-xs-6 col-md-6">
                            <form:label path="lastname" ><spring:message code="label.lastname"/></form:label>
       <form:input path="lastname" class="form-control input-lg"/>
                        </div>
                    </div>
                    <form:label path="email" > <spring:message code="label.email"/></form:label>
        <form:input path="email" class="form-control input-lg" />
		   
                    <form:label path="password" ><spring:message code="label.password"/></form:label>
        <form:input path="password" class="form-control input-lg"/>
                   <div><p>
                   
                   
                   </p>
                   
                   </div>
                <input type="submit" value="<spring:message code="label.add" /> " class="btn btn-lg btn-primary btn-block signup-btn"/>
            </form:form>
           
          </div>
</div>
     
	<div style="width:100&#37;;">
	<div id="float1" style="width:30%;float:left;color:blue"> 
	<p><ul>
	<h3> Passwords must follow the below rules</h3>
	<li> Password must contain one character minimum</li>
	<li> Password must contain one numeric minimum. </li>
	<li> Password should be of lenght 4-20.</li>
	<li> No special Characters allowed.</li>
	<li> Ex: abc123456</li></ul>
	</p></div>
	     
	
	<div id="float2" style="width:50%;float:right;color:blue"> 
	<p> 
	<ul>
	<h3>SSN format </h3> 
	<li> SSN should include dashes (-) in between digits</li>
	<li> Format: ddd-dd-dddd</li>
	<li> Ex: 123-45-6789</li>
	</ul></p>
	</div>
	</div>	
</div>
</div>

</body>
</html>