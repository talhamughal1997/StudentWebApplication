<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GALLERY.aspx.cs" Inherits="New_Web.GALLERY" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="CSS/Style_Gallery.css" rel="stylesheet" />

    <script src="/JQuery/JQ.js"></script>



        <script>


            $(document).scroll(function () {





                $(".gallery-im-1").animate({ Left: '60px' },1);
                $(".gallery-im-2").animate({ left: '370px' },1);
                $(".gallery-im-3").animate({ left: '680px' },1);
                $(".gallery-im-4").animate({ left: '990px' },1);
                $(".gallery-im-5").animate({ left: '60px' },1);
                $(".gallery-im-6").animate({ left: '370px' },1);
                $(".gallery-im-7").animate({ left: '680px' },1);




                $(".gallery-im-1,.gallery-im-2,.gallery-im-3,.gallery-im-4,.gallery-im-5,.gallery-im-6,.gallery-im-7").hover(function () {


                    $(".icons-1,.icons-2,.section", this).fadeIn(1);

                    $(".icons-1", this).animate({ left: '80px' }, 1);
                    $(".icons-2", this).animate({ left: '150px' }, 1);
                    $(".section", this).animate({ left: '30px' }, 1);

                },

                    function () {

                        $(".icons-1,.icons-2,.section", this).fadeOut(1);


                        $(".icons-1", this).animate({ left: '0px' });
                        $(".icons-2", this).animate({ left: '0px' });
                        $(".section", this).animate({ left: '0px' });



                    });



















            });



	</script>










</asp:Content>













<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    

     

     <div class="Gallery-Area">   <!-- Open Gallery Area -->
            
            
            	<h1>Gallery</h1>
            
            
            
            
            
				
                
                <div class="gallery-im-1">   <!-- Open Gallery Image : 1 -->     	
                 
         
                
            <!-- <img id="gallery-img-1" src="/IMAGES/Gallery_Images/galery-1.png" style="position:absolute;">  -->
                              
                 
                 <img class="icons-1" src="/IMAGES/Gallery_Images/i-icon.png"/>
        
        
        
     		     <img class="icons-2" src="/IMAGES/Gallery_Images/plus-icon.png"/>
               
               
                 
                 <section class="section">
              Our broad tool-set enables us to partner with you to create and integrate custom solutions that streamline efficiency and improve the effectiveness of your efforts.
              	</section>
              
              
              
                </div> <!-- Close Gallery Image : 1  -->
                
            
            
            
            
            		
                    
                    
                    
                    
                    
                    
            	<div class="gallery-im-2">   <!-- Open Gallery Image : 2 -->     	
                 
         
                
            <!--    <img id="gallery-img-2" src="/IMAGES/Gallery_Images/galery-2.png" style="position:absolute;">  -->
                 
                 
                 <img class="icons-1" src="/IMAGES/Gallery_Images/i-icon.png"/>
        
        
        
     		     <img class="icons-2" src="/IMAGES/Gallery_Images/plus-icon.png"/>
               
               
                 
                 <section class="section">
              Our broad tool-set enables us to partner with you to create and integrate custom solutions that streamline efficiency and improve the effectiveness of your efforts.
              	</section>
              
              
              
                </div> <!-- Close Gallery Image : 2  -->
               
               
               
               
               
               
               <div class="gallery-im-3">   <!-- Open Gallery Image : 3 -->     	
                 
         
                
            <!--    <img id="gallery-img-2" src="/IMAGES/Gallery_Images/galery-3.png" style="position:absolute;">  -->
                 
                 
                 <img class="icons-1" src="/IMAGES/Gallery_Images/i-icon.png"/>
        
        
        
     		     <img class="icons-2" src="/IMAGES/Gallery_Images/plus-icon.png"/>
               
               
                 
                 <section class="section">
              Our broad tool-set enables us to partner with you to create and integrate custom solutions that streamline efficiency and improve the effectiveness of your efforts.
              	</section>
              
              
              
                </div> <!-- Close Gallery Image : 3  -->
                
            
            
            
            
            
            
              <div class="gallery-im-4">   <!-- Open Gallery Image : 4 -->     	
                 
         
                
            <!--    <img id="gallery-img-2" src="/IMAGES/Gallery_Images/galery-4.png" style="position:absolute;">  -->
                 
                 
                 <img class="icons-1" src="/IMAGES/Gallery_Images/i-icon.png"/>
        
        
        
     		     <img class="icons-2" src="/IMAGES/Gallery_Images/plus-icon.png"/>
               
               
                 
                 <section class="section">
              Our broad tool-set enables us to partner with you to create and integrate custom solutions that streamline efficiency and improve the effectiveness of your efforts.
              	</section>
              
              
              
                </div> <!-- Close Gallery Image : 4  -->
                
            
            
            
            
            
            
             <div class="gallery-im-5">   <!-- Open Gallery Image : 5 -->     	
                 
         
                
            <!--    <img id="gallery-img-2" src="/IMAGES/Gallery_Images/galery-5.png" style="position:absolute;">  -->
                 
                 
                 <img class="icons-1" src="/IMAGES/Gallery_Images/i-icon.png"/>
        
        
        
     		     <img class="icons-2" src="/IMAGES/Gallery_Images/plus-icon.png"/>
               
               
                 
                 <section class="section">
              Our broad tool-set enables us to partner with you to create and integrate custom solutions that streamline efficiency and improve the effectiveness of your efforts.
              	</section>
              
              
              
                </div> <!-- Close Gallery Image : 5  -->
            
            
            
            
            
            
            
            
             <div class="gallery-im-6">   <!-- Open Gallery Image : 6 -->     	
                 
         
                
            <!--    <img id="gallery-img-2" src="/IMAGES/Gallery_Images/galery-6.png" style="position:absolute;">  -->
                 
                 
                 <img class="icons-1" src="/IMAGES/Gallery_Images/i-icon.png"/>
        
        
        
     		     <img class="icons-2" src="/IMAGES/Gallery_Images/plus-icon.png"/>
               
               
                 
                 <section class="section">
              Our broad tool-set enables us to partner with you to create and integrate custom solutions that streamline efficiency and improve the effectiveness of your efforts.
              	</section>
              
              
              
                </div> <!-- Close Gallery Image : 6  -->
            
            
            
            
            
            
            
             <div class="gallery-im-7">   <!-- Open Gallery Image : 4 -->     	
                 
         
                
            <!--    <img id="gallery-img-2" src="/IMAGES/Gallery_Images/galery-7.png" style="position:absolute;">  -->
                 
                 
                 <img class="icons-1" src="/IMAGES/Gallery_Images/i-icon.png"/>
        
        
        
     		     <img class="icons-2" src="/IMAGES/Gallery_Images/plus-icon.png"/>
               
               
                 
                 <section class="section">
              Our broad tool-set enables us to partner with you to create and integrate custom solutions that streamline efficiency and improve the effectiveness of your efforts.
              	</section>
              
              
              
                </div> <!-- Close Gallery Image : 4  -->
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            </div>   <!-- Close Gallery Area -->        
 
    




      
 
        
    





</asp:Content>
