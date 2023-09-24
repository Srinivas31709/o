<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html lang="en">
    <head>
    <style>

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}


li 
{
  float: left;
    border-right: 1px solid blue;
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}

</style>
</head>



    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>
    E-Survey Hub
    </title>
    <meta name="description" content="Simple landind page" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>
    <!--Replace with your tailwind.css once created-->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700" rel="stylesheet" />
    <!-- Define your gradient here - use online tools to find a gradient matching your branding-->
    <style>
      .gradient {
        background: linear-gradient(90deg, #d53369 0%, #daae51 100%);
      }
    </style>
 
  <body class="leading-normal tracking-normal text-white gradient" style="font-family: 'Source Sans Pro', sans-serif;">
    <!--Nav-->
    <nav id="header" class="fixed w-full z-30 top-0 text-white">
      <div class="w-full container mx-auto flex flex-wrap items-center justify-between mt-0 py-2">
        <div class="pl-4 flex items-center">
          <a class="toggleColour text-white no-underline hover:no-underline font-bold text-2xl lg:text-4xl" href="#">
            <!--Icon from: http://www.potlabicons.com/ -->
            <svg class="h-8 fill-current inline" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512.005 512.005">
              <rect fill="#2a2a31" x="16.539" y="425.626" width="479.767" height="50.502" transform="matrix(1,0,0,1,0,0)" />
              <path
                class="plane-take-off"
                d=" M 510.7 189.151 C 505.271 168.95 484.565 156.956 464.365 162.385 L 330.156 198.367 L 155.924 35.878 L 107.19 49.008 L 211.729 230.183 L 86.232 263.767 L 36.614 224.754 L 0 234.603 L 45.957 314.27 L 65.274 347.727 L 105.802 336.869 L 240.011 300.886 L 349.726 271.469 L 483.935 235.486 C 504.134 230.057 516.129 209.352 510.7 189.151 Z "
              />
            </svg>
            E-Survey
          </a>
        </div>
        <div class="block lg:hidden pr-4">
          <button id="nav-toggle" class="flex items-center p-1 text-pink-800 hover:text-gray-900 focus:outline-none focus:shadow-outline transform transition hover:scale-105 duration-300 ease-in-out">
            <svg class="fill-current h-6 w-6" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
              <title>Menu</title>
              <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" />
            </svg>
          </button>
        </div>
        <div class="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden mt-2 lg:mt-0 bg-white lg:bg-transparent text-black p-4 lg:p-0 z-20" id="nav-content">
          <ul class="list-reset lg:flex justify-end flex-1 items-center">
           <li><a href="/">Home</a></li>
  <li><a href="adminlogin">Admin</a></li>
  <li><a href="citizenlogin">Citizen</a></li>
   <li><a href="govtofficiallogin">GovtOfficial</a></li>
    <li><a href="marketingmanagerlogin">MarketingManager</a></li>
    <button>
            <li><a href="">      </a></li>
          </button>
          </ul>
          
        </div>
      </div>
      <hr class="border-b border-gray-100 opacity-25 my-0 py-0" />
    </nav>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
        
        <title>Slider</title>
    </head>
    <body>
        <div class="container"> 
            <div class="slider">

                <div class="box1 box">
                    <div class="bg"></div>
                    <div class="details">
                        <h1>Admin</h1>
                        <p>
                             Admin is the main template where it includes every operation done 
                             by all the users.
                        </p>
                        <button>Check Now</button>
                    </div>

                    <div class="illustration"><div class="inner"></div></div>
                </div>
                                
                
                <div class="box2 box">
                    <div class="bg"></div>
                    <div class="details">
                        <h1>Citizen</h1>
                        <p>
                            Citizen performs his login and register and he is the one who
                            gives the survey of the govtOfficials and markettingManagers.
                        </p>
                        <button>Check Now</button>
                    </div>

                    <div class="illustration"><div class="inner"></div></div>
                </div>
                                
                <div class="box3 box">
                    <div class="bg"></div>
                    <div class="details">
                        <h1>Govt Official</h1>
                        <p>
                            He is the official govt employee can create form using survey template 
                            So he can view the status and users of citizen and marketing Managers.
                        </p>
                        <button>Check Now</button>
                    </div>

                    <div class="illustration"><div class="inner"></div></div>
                </div>
                                
                <div class="box4 box">
                    <div class="bg"></div>
                    <div class="details">
                        <h1>Maketing Manager</h1>
                        <p>
                            Marketing regarding Surveys and Manages citizen's survey form of marketing regarding surveys.
                            He is added by GovtOfficials and also the govt reporter.
                        </p>
                        <button>Check Now</button>
                    </div>

                    <div class="illustration"><div class="inner"></div></div>
                </div>
                                
                <div class="box5 box">
                    <div class="bg"></div>
                    <div class="details">
                        <h1>Survey</h1>
                        <p>
                            Survey is the template used by all the users so some of them create 
                            and some of them view and some of them give the survey.
                        </p>
                        <button>Check Now</button>
                    </div>

                    <div class="illustration"><div class="inner"></div></div>
                </div>
                                
            </div>

            <svg xmlns="http://www.w3.org/2000/svg" class="prev" width="56.898" height="91" viewBox="0 0 56.898 91"><path d="M45.5,0,91,56.9,48.452,24.068,0,56.9Z" transform="translate(0 91) rotate(-90)" fill="#fff"/></svg>
            <svg xmlns="http://www.w3.org/2000/svg" class="next" width="56.898" height="91" viewBox="0 0 56.898 91"><path d="M45.5,0,91,56.9,48.452,24.068,0,56.9Z" transform="translate(56.898) rotate(90)" fill="#fff"/></svg>
            <div class="trail">
                    <div class="box1 active">1</div>
                    <div class="box2">2</div>
                    <div class="box3">3</div>
                    <div class="box4">4</div>
                    <div class="box5">5</div>
            </div>
        </div>   
        <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/gsap-latest-beta.min.js"></script>
        <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/CSSRulePlugin3.min.js"></script>
        
        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.3.2/gsap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.3.2/CSSRulePlugin.min.js"></script> -->
        <script src="script.js"></script>
    </body>
</html>