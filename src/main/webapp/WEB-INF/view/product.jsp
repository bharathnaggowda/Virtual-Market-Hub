<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title></title>
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel='stylesheet' href='/stylesheets/style.css' />
    <link rel='stylesheet' href='//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css' /> 
    <link rel='stylesheet' href='http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css' /> 
  </head>
  
  <body>
<nav class="navbar navbar-default" role="navigation">
  <div class="navbar-header" class="col-md-6">
     <a class="navbar-brand" href="/"><img src="http://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/EBay_logo.svg/318px-EBay_logo.svg.png" height="30" width="30"></a>  
  </div>
    <div class="col-md-6">
        
    </div>
    <div class="col-md-3">
    <ul class="nav navbar-nav navbar-right">
        <li><i class="fa fa-check"></i> Logged in as: </a></li><br/>
        <li><i class="fa fa-edit"></i>Last Log in time: </a></li><br/>
    </ul>
    </div>
  </div> 
 <ul>	
 <li><a href="/signout"><i class="fa fa-edit"></i>Sign Out</a></li>
 </ul>
</nav>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
   	<form:form action="addproduct" method="post" commandName="product">
          <div class="panel panel-info">
            <div class="panel-heading">
              <div class="col-md-3 col-lg-3 " align="left"> </div>
            </div>
            <div class="panel-body">
              <div class="row">
                
                <h2 class="panel-title">Enter details below : </h2>
                <div class=" col-md-9 col-lg-9 "> 
                 <br/><br/> <p>
			Enter the product name:
                  </p>
		<input type="text" name="product" value="" id="product" size="50" width="300px"></input>

		<br/><br/> <p>
			Type of product:
                  </p>
		<input type="text" name="productType" value="" id="productType" size="50" width="300px"></input>
		<br/><br/><br/><p> Category the item belongs to:
                 <select id="category" name="category" value=" " require="true">
  							<option value="Electronics">Electronics</option>
  							 <option value="Clothes">Clothes</option>
    							<option value="Luggage">Luggage</option>
    							<option value="Movies">Movies</option>
    							<option value="Auto Mobiles">Auto Mobiles</option>
    							<option value="All Other">All Other</option>   					
  							</select></p>
                 
                <br/><br/>  <p>
			Quantity:
                  </p>
		<input type="text" name="quantity" value="" id="quantity" size="50" width="300px"></input>
 		<br/><br/><br/><p>
			Brand:
                  </p>
		<input type="text" name="brand" value="" id="brand" size="50" width="500px"></input>
                 
		<br/><br/><p> Condition of the product:
                 <select id="state" name="state" value=" " require="true">
  							<option value="New">New</option>
  							 <option value="Used">Used</option>
    							<option value="Refurbished">Refurbished</option>  					
  							</select></p>

		<br/><br/><p>
			model number:
                  </p>
		<input type="text" name="model" value="" id="model" size="50" width="300px"></input>

		<br/><br/><p>
			Description:
                  </p>
		<textarea type="text" name="description" value="" id="textarea" width="300px"></textarea>
                <br/><br/> <p>
			Selling price (ex: 25$)
                  </p>
		<input type="text" name="price" value="" id="price" size="50" width="300px"></input>
                </div>
              </div>
            </div>
            <button type="submit" class="myButton">Keep the product for sale</button>
          </div>
	</form:form>
        </div>
      </div>
    </div>
</body>
</html>
