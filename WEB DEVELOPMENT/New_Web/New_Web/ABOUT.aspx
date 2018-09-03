<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ABOUT.aspx.cs" Inherits="New_Web.ABOUT" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    
    <link href="CSS/Style_About.css" rel="stylesheet" />
    <script src="/JQuery/JQ.js"></script>


    <script>


        $(document).ready(function () {

            FastSlider();

        });




        $(document).scroll(function () {





            $(".Projects-Box").fadeIn(6000);
            $("#projects-box,#projects-box2").slideDown(4000);
            $("#img1,#img2,#img3,#img4").slideDown(3000);
            $("footer h4").slideDown(4000);
            $(".box1,.box2,.box3").slideDown(4000);
            $(".fast-box img").slideDown(2000);
            $(".fast-box #fast-h1,#fast-h2,#fast-h3,input").fadeIn(1000);






            $(".fast-box #fast-h1").animate({ left: '190px' }, 1000);
            $(".fast-box #fast-h2").animate({ left: '240px' }, 1000);
            $(".fast-box #fast-h3").animate({ left: '290px' }, 1000);
            $(".fast-box #email").animate({ left: '300px' }, 1000);
            $(".fast-box #sub").animate({ left: '700px' }, 1000);




            $("#comment-img-1").hover(function () {

                $("#comment-p-1").slideDown(100);
                $("#comment-h5-1").fadeIn(1000);


            },

            function () {
                $("#comment-p-1").slideUp(1);
                $("#comment-h5-1").fadeOut(1000);

            });


            $("#comment-img-2").hover(function () {

                $("#comment-p-2").slideDown(2000);
                $("#comment-h5-2").fadeIn(1000);

            },

            function () {
                $("#comment-p-2").slideUp(2000);
                $("#comment-h5-2").fadeOut(1000);

            });



            $("#comment-img-3").hover(function () {

                $("#comment-p-3").slideDown(2000);
                $("#comment-h5-3").fadeIn(1000);

            },

              function () {
                  $("#comment-p-3").slideUp(2000);
                  $("#comment-h5-3").fadeOut(1000);

              });



            $("#tm-box-img-1").hover(function () {

                $("#h2-1,#h3-1,#tm-sec-1").slideDown(300);


            },

                function () {
                    $("#h2-1,#h3-1,#tm-sec-1").slideUp(1);


                });



            $("#tm-box-img-2").hover(function () {

                $("#h2-2,#h3-2,#tm-sec-2").slideDown(300);


            },

                function () {
                    $("#h2-2,#h3-2,#tm-sec-2").slideUp(1);


                });


            $("#tm-box-img-3").hover(function () {

                $("#h2-3,#h3-3,#tm-sec-3").slideDown(300);


            },

                function () {
                    $("#h2-3,#h3-3,#tm-sec-3").slideUp(1);


                });


            $("#tm-box-img-4").hover(function () {

                $("#h2-4,#h3-4,#tm-sec-4").slideDown(300);


            },

                function () {
                    $("#h2-4,#h3-4,#tm-sec-4").slideUp(1);


                });

            $("footer").fadeIn(3000);
            $(".icon,#adres").slideDown(4000);




        });





        function FastSlider() {

            $("#fast-im-1").animate({ opacity: '1' }, 6000, function () {
                $("#fast-im-1").animate({ opacity: '.2' }, 6000, function () {
                    $("#fast-im-2").animate({ opacity: '1' }, 6000, function () {
                        $("#fast-im-2").animate({ opacity: '.2' }, 6000, FastSlider);


                    });
                });
            });
        }

</script>










</asp:Content>


















<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    
         	 <div class="company-profile">    <!-- Open Company Profile -->
        
        
        
        		<h1>Company profile:</h1>
        
        
        <p>
        	Our Communication Company is proud to service the communities with phone, long distance, internet and cable services. Quality Communication serves this area because we call it home too. We work every day to provide you the best products that can be provided in the area with the latest technology. Why? It is SIMPLE, because we live and work in the same towns you call home and we want the best for our families too. When you choose Quality Communication as your telecommunications service provider you can be assured that you're 'keeping it local'. Thank you for your support.
        	</p>
        
        
     	 	  <img src="/IMAGES/AboutUs_Images/profile-img-1.png">
      		  <img src="/IMAGES/AboutUs_Images/profile-img-2.png">
      		  <img src="/IMAGES/AboutUs_Images/profile-img-3.png">
              
              
              <h2>Web solutions</h2>
              <h2>Digital marketing</h2>
              <h2>Growth strategies</h2>
              
              <section>
              Our broad tool-set enables us to partner with you to create and integrate custom solutions that streamline efficiency and improve the effectiveness of your efforts.
              	</section>
                
                
                 <section>
              Our digital marketing services will help you increase revenue, deepen relationships, enhance referrals, and elevate your reputation.
              	</section>
        	
            	
                <section>
                Our proven approach will help you develop targeted growth strategies to multiply and measure the impact of your organization.
                	</section>
        
        
        
        </div>   <!-- Close Company Profile  -->
        
        
       <div class="fast-box">   <!-- Open Fast Download Box  -->
        
        	<img id="fast-im-1" src="/IMAGES/AboutUs_Images/world-1.jpg">
            <img id="fast-im-2" src="/IMAGES/AboutUs_Images/world-2.jpg">
        
        
        	
            <h1 id="fast-h1">Fast download and upload speeds at affordable prices.</h1>
            
            <h2 id="fast-h2">Find the best deals in your<br> area.</h2>
            
            <h3 id="fast-h3">Enter your address to view local offers and pricing</h3>
            
            
            <input type="email" id="email" placeholder="ENTER YOUR EMAIL">
            <input type="submit" id="sub" value="Click Here">
            
            
        
        	</div>  <!-- Close Fast Download Box  -->
            
            
            <div class="team-box">    <!-- Open Team Box  -->
            
            
            <h1>MEET OUR TEAM : </h1>
           
           
            
            <div class="t-box-1">

            
            <img id="tm-box-img-1" src="/IMAGES/AboutUs_Images/team-1.png">
                
            <h2 id="h2-1">John Anderson</h2>
            <h3 id="h3-1">(Creative Director)</h3>
            <section id="tm-sec-1">
            John served as full-time Creative Director for two years and he now brings a wealth of experience as a strategic partner in design.
            		</section>
            
            </div>
            
            
           
           
            <div class="t-box-2">
            
            
            <img id="tm-box-img-2" src="/IMAGES/AboutUs_Images/team-2.png">
            <h2 id="h2-2">Eva Adamson</h2>
            <h3 id="h3-2">(Graphic Designer)</h3>
            <section id="tm-sec-2">
            Her experience with both business and non-profit design provides her with a well-rounded skill set to meet the needs of our clients.
            		</section>
            
            </div>
            
            
           
           
            <div class="t-box-3">
            
            <img id="tm-box-img-3" src="/IMAGES/AboutUs_Images/team-3.png">
            
            <h2 id="h2-3">Mark Johnson</h2>
            <h3 id="h3-3">(Front End Developer)</h3>
            <section id="tm-sec-3">
            Mark is a successful front-end developer with a strong background in website design and development, user interface, and user experience.
            		</section>
            
            
            </div>
            
            
           
           
            <div class="t-box-4">
            

                 <img id="tm-box-img-4" src="/IMAGES/AboutUs_Images/team-4.png">
               
            
            <h2 id="h2-4">Anete Puga</h2>
            <h3 id="h3-4">(Software Developer)</h3>
            <section id="tm-sec-4">
            Anete has a passion for organizing data and finding unique solutions to help clients achieve their short term goals and their larger missions.
            		</section>
            
            
            </div>
            
            
            
            
            </div>   <!-- Close Team Box  -->
            
            
            <div class="price-area">    <!-- Open Price Area -->
            
            <h1>Our Pricing Table :</h1>
            
           
           
           
           
           
            <div class="price-box-1">  
            
          <h1>20 <a> mbps</a></h1>
            
            <h2>Starter</h2>
            
            <p>
            	Access To 100,000 WI-FI Hotspots <br> At No Extra Cost ..
            	</p>
            
            
            <div id="price-line-1"></div>  <!-- Make a Line  -->
            
            
            <h3>$25.99</h3>
            <h4>For The First 6 Months</h4>
            
            <h5>Order Now</h5>
            
            </div>
            
            
         
         
         
            
            
            
            <div class="price-box-2">  
            
            <h1>120 <a> mbps</a></h1>
            
            <h2>Extreme</h2>
            
            <p>
            	Access To 100,000 WI-FI Hotspots <br> At No Extra Cost ..
            	</p>
            
            
            <div id="price-line-2"></div>  <!-- Make a Line  -->
            
            
            <h3>$79.99</h3>
            <h4>For The First 6 Months</h4>
            
            <h5>Order Now</h5>
            
            </div>
            
           
           
           
           
           
           
           
            
            <div class="price-box-3">  
           
           
            <h1>60 <a> mbps</a></h1>
            
            <h2>Performance</h2>
            
            <p>
            	Access To 100,000 WI-FI Hotspots <br> At No Extra Cost ..
            	</p>
            
            
            <div id="price-line-3"></div>  <!-- Make a Line  -->
            
            
            <h3>$45.99</h3>
            <h4>For The First 6 Months</h4>
            
            <h5>Order Now</h5>
            
            
            
            </div>
            
            
            </div>   <!-- Close Price Area -->
        











</asp:Content>
