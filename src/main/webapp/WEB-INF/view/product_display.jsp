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
           <div class="stepwizard">
    <div class="stepwizard-row">
    </div>
</div>

<c:if  test="${!empty results}">
<c:forEach items="${results}" var="prod">
<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-12">
					<div class="product col-md-3 service-image-left">
                    
						<center>
							<img id="item-display" src="${prod.imageName}" alt=""></img>
						</center>
					</div>
	<!-- 				
					<div class="container service1-items col-sm-2 col-md-2 pull-left">
						<center>
							<a id="item-1" class="service1-item">
								<img src="${prod.imageName }" alt=""></img>
							</a>
							<a id="item-2" class="service1-item">
								<img src="${prod.imageName }" alt=""></img>
							</a>
							<a id="item-3" class="service1-item">
								<img src="${prod.imageName }" alt=""></img>
							</a>
						</center>
					</div>
				</div>
		 -->			
				<div class="col-md-7">
					<div class="product-title">${prod.productName} </div>
					<div class="product-desc">${prod.productType}</div>
					<div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
					<hr>
					<div class="product-price">${prod.brand }</div>
					<div class="product-stock">${prod.quantity }</div>
					<hr>
					<div class="btn-group cart">
					<a href="/addToCart/${prod.productId }">
						<button type="button" class="btn btn-success">
							Add to cart 
						</button></a>
					</div>
					<div class="btn-group wishlist">
						<button type="button" class="btn btn-danger">
							Add to wishlist 
						</button>
					</div>
				</div>
			</div> 
		</div>
		<div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION & REVIEWS</a></li>
						
					</ul>
				<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="service-one">
						 
							<section class="container product-info">
								<h3> State: ${prod.state }</h3>
								<li>Model: ${prod.model }</li>
								<li>${prod.description }</li>
							</section>
										  
						</div>
					
				</div>
				<hr>
			</div>
		</div>
	</div>
</div>
</c:forEach>
</c:if>
        </div>
    </div>
	
  </body>
</html>
