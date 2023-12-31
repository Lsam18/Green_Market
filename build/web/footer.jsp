<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- Defining Footer -->

<html>
    
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
        <style>
             @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap');

:root {

    --orange:#1B4F72 ;
    --black:#130f40;
    --light-color:#fff;
    --box-shadow: 0 .5rem 1rem rgba(0,0,0,1);
    --border:2rem solid rgba(0,0,0,.1);
    --outline:.1rem solid rgba(0,0,0,.1);
    --outline-hover:.2rem solid var(--black);
}

  * {
     font-family: 'Roboto', sans-serif;
     margin:0;
     padding:0;
     box-sizing: border-box;
     outline: none;
     border: none;
     text-decoration: none;
     text-transform: capitalize;
     transition: all .2s linear;
  }
  
  .footer{

  background: linear-gradient(to right,#1B4F72 ,#F39C12  );
   border-top-right-radius: 125px;
   border-top-left-radius:  125px;
   border-bottom-left-radius:  125px;
   border-bottom-right-radius: 125px;
    
}

.footer .box-container1{

  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
padding: 30px;
}


.footer .box-container1 .box1 h3{

  font-size: 2rem;
  color: var(--black);
  padding: 1rem 0;
}

.footer .box-container1 .box1 h3 i{


  color: var(--orange);
}

.footer .box-container1 .box1 .links{
  display: block;
  font-size: 1.5rem;
  color: var(--light-color);
  padding: 1rem 0;
}

.footer .box-container1 .box1 .links i{

  color: var(--orange);
  padding-right: .5rem;

}

.footer .box-container1 .box1 .links:hover i{

 
  padding-right: 2rem;

}



.footer .box-container1 .box1 p{
  line-height: 1.8;
  font-size: 1rem;
  color: var(--light-color);
  padding: 1rem 0;
}

.footer .box-container1 .box1 .share1 a{

  height: 4rem;
  width: 4rem;
  line-height: 4rem;
  border-radius: .5rem;
  font-size: 1rem;
  color: var(--black);
  margin-left: .2rem;
  background: #eee;
  text-align: center;


}

.footer .box-container1 .box1 .share1 a:hover{
  background: var(--orange);

  color: #fff;

}


.footer .box-container1 .box1 .email{
  width: 100%;
  margin: .7rem 0;
  padding: 1rem;
  border-radius: .5rem;
  background: #eee;
  font-size: 1.6rem;
  color: var(--black);
  text-transform: none;


}
            
        </style>
        
    </head>
    <body>

<section class="footer">

    <div class="box-container1">
        <div class="box1">
            <h3>Green Market</h3>
            <p>Join us on a journey towards a greener, healthier lifestyle as we strive to make sustainable living accessible and enjoyable for everyone. Shop with purpose, shop with Green Supermarket.</p>
            <div class="share1">
             <a href="##" class="fa-brands fa-facebook"></a>
             <a href="##" class="fa-brands fa-twitter"></a>
             <a href="##" class="fa-brands fa-instagram"></a>
             <a href="##" class="fa-brands fa-linkedin"></a>
             
            </div>
        </div>

       

        <div class="box1">
            <h3>Quick Links</h3>
            <a href="index.jsp" class="links"><i class="fa-solid fa-arrow-right"></i>Home</a>
            <a href="products.jsp" class="links"><i class="fa-solid fa-arrow-right"></i>Products</a>
            <a href="customer-register.jsp" class="links"><i class="fa-solid fa-arrow-right"></i> Register</a>
            <a href="aboutusjsp.jsp" class="links"><i class="fa-solid fa-arrow-right"></i>About Us</a>
            
        </div>
        
         <div class="box1" >
            <h3>Contact Us</h3>
            
            <a href="" class="links"><i class="fa-solid fa-phone"></i>076 7337155</a>
            <a href="" class="links"><i class="fa-solid fa-phone"></i>034 3367297</a>
            <a href="greensuper777@gmail.com" class="links"><i class="fa-solid fa-envelope"></i>greensuper934@gmail.com</a>
            <a href="" class="links"><i class="fa-solid fa-location-dot"></i>Nsbm Green Univercity</a>
            
        </div>

       

    </div>
</section


</body>

</html>>