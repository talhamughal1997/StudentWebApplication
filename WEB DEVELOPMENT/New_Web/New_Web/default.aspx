<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="New_Web._default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    
    <link href="CSS/Style_Index.css" rel="stylesheet" />
    
    
    <script src="/JQuery/JQ.js"></script>
    
    
    
    <script>





        $(document).scroll(function () {



            $(".Projects-Box").fadeIn(3000);
            $(".Projects-Box P").slideDown(4000);
            $("h2,h1,h3").slideDown(4000);
            $("#img1,#img2,#img3,#img4").slideDown(3000);
            $("h4").slideDown(4000);
            $(".box1,.box2,.box3").slideDown(4000);




            $("#comment-img-1").hover(function () {

                $("#comment-p-1").slideDown(2000);
                $("#comment-h5-1").fadeIn(1000);


            },

            function () {
                $("#comment-p-1").slideUp(2000);
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

            $("footer").fadeIn(3000);
            $(".icon,#adres").slideDown(4000);




        });




</script>












</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="Main-Page">	<!-- Open Main Page -->
       
       
       <p>Providing a sustainable environment with opportunities <br />for <a>prosperity and success</a></p>
       
       
       <section>
       		Thank you for visiting our site! You are at the right place! We are focused on providing integrated solutions and services to customers around the world. Putting our clients’ interests first, we work hard to exceed your expectations.
            </section>
	
    	<section>
        	Our company can boast the reputation of the trusted partner known worldwide. We are proud of the uncompromising quality of services we provide. Placing customers’ needs first in everything we do, we continue to grow rapidly as the industry leader.
            </section>
            
        <section>
        	Our company is your one stop solution for all needs. There is no doubt that we are the leaders and you don’t have to worry about our image because it is perfect. A great number of different grateful clients is the best prove of the previous statement.
            </section>
            
            <!-- Create Row -->
            
            <img src="/IMAGES/Home_Images//row.png" />
            
            
            <div id="para">
            	

Our company has developed the right mix of products and services to quickly move your organization from where it is now, to where you want it to be. The key is to know which services to use and when. That’s where company experienced staff will help guide you to keep costs down, and your goals front and center.
			
            </div>
		
        	<img style="margin:50px 0 0 545px;" src="/IMAGES/Home_Images//read-more-1.jpg" />
            
            
            
            </div>	<!-- Close Main Page -->
            
            
            
            <div class="Projects-Box">  <!-- Open Projects Box -->
            
            
            
            
            
            	<h1 id="projects-box">Latest projects:</h1>
                
                <img src="/IMAGES/Home_Images//projects-img-1.png" />
                <img src="/IMAGES/Home_Images//projects-img-2.png" />
                <img src="/IMAGES/Home_Images//projects-img-3.png" />
                <img src="/IMAGES/Home_Images//projects-img-4.png" />
                
             
                
              
              
              
        
         
         
         
                <h2 id="H1">Business solutions</h2>
                <h2>Business phone systems</h2>
                <h2>Data networking solutions</h2>
                <h2>Wireless networks</h2>
                
               
                <p>
                Keeping your company’s employees connected to your customers and to each other becomes paramount as the speed of business continues to move faster.
                </p>
            
            
            
            <p>
               Our business communication consultants spend considerable time learning about your business, what you do, and how you do it.
                </p>
            
              
            
              
                <p>
                We offer a full range of help desk services: consultation, design, development and implementation services to meet our customer’s most demanding requirements.
                </p>
           	 
            
            
            	 <p> 
                As users become increasingly mobile and business applications become more collaborative, advanced wireless services help companies maintain innovation.
                </p>
             
                <img id="img1" src="/IMAGES/Home_Images//read-more-1.png" style="margin:60px 20px 0 80px;">
                <img id="img2" src="/IMAGES/Home_Images//read-more-1.png" style="margin:60px 20px 0 80px;">
                <img id="img3" src="/IMAGES/Home_Images//read-more-1.png" style="margin:60px 20px 0 80px;">
                <img id="img4" src="/IMAGES/Home_Images//read-more-1.png" style="margin:60px 20px 0 95px;">
               
                
                
                <h3>Newsletter:</h3>
                
                <h4>Enter your email here to receive our news & events</h4>
                
                
                
                
                <input type="email" placeholder="E-mail">
                <input type="button" id="submit" value="Submit">
                
                
          
            
            </div>  <!-- Close Projects Box -->
        
        
        
        
        <div class="comment-box">  <!-- Open Comment Box -->
        


        
        	
            <h1>Testimonials :</h1>
            
        
        
        
        	<div class="box1">  <!-- Open Box :1  -->
            	
                
                
                <img id="comment-img-1" src="/IMAGES/Home_Images//comment-img-1.png" />
            	
                <p id="comment-p-1">
                Thank you very much. I’m impressed with your service. I’ve already told my friends about your company and your quick response, thanks again! 
                </p>
                
                <h5 id="comment-h5-1">Sam Nelson</h5>
                
            
            	</div>    <!-- Close Box :1  -->
                
                
        
        <div class="box2">  <!-- Open Box :2  -->
        
        
        
        	<img id="comment-img-2" src="/IMAGES/Home_Images//comment-img-2.png" />
        
        
        <p id="comment-p-2">
          Wow, I'm so happy with your service. You managed to exceed my expectations! You guys are very efficient and I will refer more people to your company! 
             </p> 	
             
             <h5 id="comment-h5-2">April Cox</h5>
            	
            
            	</div>	<!-- Close Box :2  -->
                
            
                
                
           <div class="box3">  <!-- Open Box :3  -->
            	
                
                
                <img id="comment-img-3" src="/IMAGES/Home_Images//comment-img-3.png" />
            	
                
             <p id="comment-p-3">
           		I would just like to say thank you for your prompt and effective service, for your friendly and professional support staff! I will recommend your expert company to friends.
                </p>
                
                <h5 id="comment-h5-3">John Johnson</h5>
                
                
                
                </div>	<!-- Close Box :3  -->
        
        
        
        	
            </div>  <!-- Close Comment Box -->
         
        














</asp:Content>
