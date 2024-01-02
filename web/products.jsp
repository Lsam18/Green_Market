<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Shopping System</title>
        <!-- Importing all ui libs -->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.easing.min.js"></script>
        <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>

<style>
#customer-feedback {
    background-color: #f8f8f8;
    padding: 40px 0;
}

.feedback-form {
    max-width: 600px;
    margin: 0 auto;
}

.feedback-form form {
    margin-top: 20px;
}

.feedback-form label {
    display: block;
    margin-bottom: 5px;
}

.feedback-form textarea {
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
    margin-bottom: 15px;
}

.feedback-form button {
    padding: 10px 20px;
    background-color: #f39c12;
    color: #fff;
    border: none;
    cursor: pointer;
}

.feedback-list {
    margin-top: 40px;
}

.feedback-item {
    border: 1px solid #ddd;
    padding: 15px;
    margin-bottom: 15px;
}

.feedback-item .user {
    font-weight: bold;
}

</style>
    </head>
    <body>
    <body>
        <div class="ban-top" style="background: linear-gradient(to right,#1B4F72,#F39C12 );border-top-right-radius: 125px;border-top-left-radius:  125px;border-bottom-left-radius:  125px;border-bottom-right-radius: 125px; ">
            <div class="container">
                <div class="top_nav_left">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed"
                                        data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1"
                                        aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span> <span
                                        class="icon-bar"></span> <span class="icon-bar"></span> <span
                                        class="icon-bar"></span>
                                </button>
                            </div>
                            <jsp:include page="header.jsp"></jsp:include>
                            </div>
                        </nav>
                    </div>

                    <div class="top_nav_right">
                        <div class="cart box_1" style="background: #1B4F72">
                            <a href="checkout.jsp"> 
                            <%
                                ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
                                resultCount.next();
                                int count = resultCount.getInt(1);
                            %>
                            <h3>
                                <div class="total">
                                    <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                                    (
                                    <%=count%>
                                    items )
                                </div>

                            </h3>
                        </a>
                        <p>
                            <a href="javascript:;" class="simpleCart_empty">My Cart</a>
                        </p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
                                   
       
        <div class="electronics">
            <div class="container">
                <div class="clearfix"></div>
                <div class="ele-bottom-grid">
                    <h3>
                         Products
                    </h3>
                    <%
                        ResultSet retriveProduct = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct");
                        while (retriveProduct.next()) {
                    %>
                    <form action="AddToCart" method="post">
                        <div class="col-md-3 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <input type="hidden" name="productId" value="<%=retriveProduct.getInt("id")%>">
                                    <img src="uploads/<%=retriveProduct.getString("image_name")%>" alt="" class="pro-image-front">
                                    <img src="uploads/<%=retriveProduct.getString("image_name")%>" alt="" class="pro-image-back"> <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product ">
                                    <h4>
                                        <%=retriveProduct.getString("name")%>
                                    </h4>
                                    <h5>
                                        Category: <%=retriveProduct.getString("product_category")%>
                                    </h5>
                                    <div class="info-product-price">
                                        <input type="hidden" name="price" value="<%=retriveProduct.getString("price")%>"> 
                                        <input type="hidden" name="mrp_price" value="<%=retriveProduct.getString("mrp_price")%>"> <span class="item_price"><%=retriveProduct.getString("price")%> Rs.</span>
                                        <del><%=retriveProduct.getString("mrp_price")%> Rs.</del>
                                    </div>
                                    <input type="submit" value="Add to cart" class="btn btn-warning" onclick="return confirm('Are you sure Do you want to add this item in cart?');">
                                </div>
                            </div>
                        </div>
                    </form>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
 <!-- Customer Feedback Section -->
    <section id="customer-feedback">
        <h2 style="font-size: 40px; font-weight: 500; text-align: center; margin-bottom: 20px;">
            Customer Feedback
        </h2>

        <!-- Feedback Form -->
        <div class="feedback-form">
            <form action="" method="post">
                <div class="form-group">
                    <label for="feedback">Your Feedback:</label>
                    <textarea class="form-control" rows="4" id="feedback" name="feedback" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit Feedback</button>
            </form>
        </div>

        <!-- Displaying Feedbacks -->
        <div id="feedback-list" class="feedback-list">
            <h3>Recent Feedbacks</h3>
            <!-- Mock-up feedbacks (replace with dynamic data from your database) -->
            <div class="feedback-item">
                <p class="user">John Doe</p>
                <p class="comment">Excellent service! Fast delivery and high-quality products.</p>
            </div>
            <div class="feedback-item">
                <p class="user">Jane Smith</p>
                <p class="comment">Great variety of products. Will shop again!</p>
            </div>
            <!-- Add more feedback items as needed -->
        </div>
    </section>
    <script>
        function submitFeedback() {
            // Get the feedback text from the textarea
            var feedbackText = document.getElementById("feedback").value;
    
            // Simulate submitting feedback to the server (in this case, there's no actual server-side script)
            // For now, let's assume a successful submission and update the feedback list
            var newFeedback = {
                user: "New User",  // You may replace this with the actual user name
                comment: feedbackText
            };
    
            // Clear the feedback form
            document.getElementById("feedback").value = '';
    
            // Add the new feedback to the feedback list
            var feedbackList = document.getElementById("feedback-list");
    
            var feedbackItem = document.createElement("div");
            feedbackItem.className = "feedback-item";
    
            var userParagraph = document.createElement("p");
            userParagraph.className = "user";
            userParagraph.textContent = newFeedback.user;
    
            var commentParagraph = document.createElement("p");
            commentParagraph.className = "comment";
            commentParagraph.textContent = newFeedback.comment;
    
            feedbackItem.appendChild(userParagraph);
            feedbackItem.appendChild(commentParagraph);
    
            // Insert the new feedback item at the beginning of the list
            feedbackList.insertBefore(feedbackItem, feedbackList.firstChild);
    
            // Display a feedback submitted message
            alert('Feedback submitted!');
        }
    
        // Attach the submitFeedback function to the form's onsubmit event
        document.querySelector('.feedback-form form').onsubmit = function (event) {
            event.preventDefault();  // Prevent the default form submission behavior
            submitFeedback();        // Call the custom submitFeedback function
        };
    </script>
    
    
    
    
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
