<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title> home</title>
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel='stylesheet' href='/stylesheets/style.css' />
    <link rel='stylesheet' href='//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css' /> 
    <link rel='stylesheet' href='http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css' />
    <link rel="shortcut icon" href="favicon.ico">
<link rel="icon" type="image/gif" href="animated_favicon1.gif">
  </head>
  
  <body background="http://10steps.sg/wp-content/uploads/2012/11/White-christmas-light-background.jpg">
<nav class="navbar navbar-default" role="navigation">
  <div class="navbar-header" class="col-md-6">
     <a class="navbar-brand" href="/"><img src="http://media.merchantcircle.com/19482392/Onlineshoppe_full.gif" height="100" width="200"></a>  
  </div>
    <div class="col-md-6">
        <form class="navbar-form" role="search" action="search">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search" name="search" id="search">
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit">Search<i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
        </form>
    </div>
    <div class="col-md-3">
    <ul class="nav navbar-nav navbar-right">
        <li><i class="fa fa-check"></i> Logged in as: </a></li><br/>
        <li><i class="fa fa-edit"></i>Last Log in time:</a></li><br/>
    </ul>
    </div>
  </div> 
 <ul>	
 <li><a href="/signout"><i class="fa fa-edit"></i>Sign Out</a></li>
 </ul>
   <ul>
        <li><a href="sell"><i class="fa fa-edit"></i>Sell Product</a></li>
    </ul>
    <div class="col-md-1" align="center">
    <form action="/displayUpdateAccount">
&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary" type="button" onclick="this.form.submit()">
  Update Account
</button></form>
   </div> 
   <div class="col-md-1" align="center"> 
   <form action="/deleteAccount" method="post">
&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary" type="button" onclick="this.form.submit()">
 Delete Account
</button>

	</form>	</div>

  <div class="col-md-1" align="center"> 
   <form action="/orderHistory" method="get">
&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary" type="button" onclick="this.form.submit()">
 Order History
</button>

	</form>	</div>
	  <div class="col-md-1" align="left"> 
   <form action="/myProducts" method="get">
&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary" type="button" onclick="this.form.submit()">
 My Products
</button>

	</form>	</div>
	
</nav>
<div class="container">
    <div class="">
    <div class="row">
        <div class="col-md-3">
            <ul class="nav nav-pills nav-stacked">
                <li ><a href="/Maithili/home"><i class="fa fa-home fa-fw"></i>Home</a></li>
                <li><a href="/Maithili/electronics"><i class="fa fa-camera fa-fw"></i>Electronics</a></li>
                <li><a href="/Maithili/clothes"><i class="fa fa-female fa-fw"></i>Clothes</a></li>
                <li><a href="/Maithili/automobiles"><i class="fa fa-suitcase fa-fw"></i>AutoMobiles</a></li>
                <li><a href="/Maithili/accessories"><i class="fa fa-video-camera fa-fw"></i>Accessories</a></li>
                <li><a href="/Maithili/other"><i class="fa fa-cog  fa-fw"></i>All Other</a></li>
            </ul>
	
        </div>
        <div class="col-md-9 well">
            <div class="row">
		<ul class="thumbnails">
		
		<c:if  test="${!empty results}">
		<c:forEach items="${results}" var="prod">
            <li class="span4">
              <a href = "/Maithili/product/${prod.productId}">
              <div class="thumbnail" >
             
                <img src="${prod.imageName }" align = 'center' height="600" width="500" alt="ALT NAME">      
                <div class="caption">
                <h3>${prod.productName}</h3>
                </div>
              </div>
               </a>
            </li>
            </c:forEach>
            </c:if>
          </ul>
	</div>
</div>
        </div>
    </div>
	
  </body>
</html>
