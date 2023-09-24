<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
@import url('https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400&display=swap');

*,
*::before,
*::after {
    padding: 0;
    margin: 0;
    box-sizing: inherit;
}

html{
    box-sizing: border-box;
    font-size: 62.5%; // 10px
}

ul{
    list-style-type: none;
}

a{
    text-decoration: none;
}

body{
    width: 100%;
    min-height: 100vh;
    font-family: 'Source Sans Pro', sans-serif;
    background-color: #f0fafb;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container{
    position: relative;
    width: 35rem;
    height: 11.5rem;
    background-color: #fff;
    padding: 2rem;
    box-shadow: 0 2px 5px rgba(0,0,0,0.2);
    overflow: hidden;
    transition: height .4s ease-in;
}
.container.active{
    height: 35rem;
    
}

.card{
    position: relative;
    display: flex;
    align-items: center;
}

.card-img img{
    width: 80px;

}

.card h2{
    font-size: 2.2rem;
    margin-left: 1.5rem;
    color: #222;
    letter-spacing: 2px;
}
.card h2 span{
    font-size: 1.6rem;
    font-weight: 400;
    color: #777;
    letter-spacing: 0px;
}

body {
  background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
  background-size: 400% 400%;
  animation: gradient 15s ease infinite;
  height: 100vh;
}

.container ul {
    position: relative;
    border-top: 1px solid rgba(0,0,0,0.1);
    margin-top: 1.5rem;
    padding: 2rem 0;

    display: flex;
    flex-direction: column;
    gap: 2rem;
}
.container ul a{
    font-size: 1.8rem;
    color: #444;
    transition: 0.2s;
}
.fa{
    font-size: 2rem;
    margin-right: 1rem;

}
.container ul a:hover{
    color: #3EDBF0;
}

.toggle{
    position: absolute;
    bottom: 0;
    right: 0;
    width: 4rem;
    height: 4rem;
    background-color: #3EDBF0;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
}

.toggle > .fa{
    margin: auto;
    color: #fff;
    text-align: center;
    cursor: pointer;
    transition: 0.25s;
   font-size: 1.8rem;
}

.container.active .toggle > .fa{
    transform: rotate(-540deg);
}

</style>
<body>
<!-- font awesome link  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />



<div class="container">
        <div class="card">
            <div class="card-img">
                <img src="images/srinivas.jpg">
            </div>
            <h2>Srinivas Obulampalli<br/><span>Developer</span></h2>
        </div>
        <ul>
            <li><a href=""><i class="fa fa-twitter" aria-hidden="true"></i>Twitter</a></li>
            <li><a href=""><i class="fa fa-facebook" aria-hidden="true"></i>Facebook</a></li>
            <li><a href=""><i class="fa fa-instagram" aria-hidden="true"></i>Instagram</a></li>
            <li><a href=""><i class="fa fa-github" aria-hidden="true"></i>Github</a></li>
            <li><a href=""><i class="fa fa-linkedin" aria-hidden="true"></i>Linkedin</a>  </li>
        </ul>
        <div class="toggle">
            <i class="fa fa-chevron-down" aria-hidden="true"></i>
        </div>
    </div>
    
    <div class="container">
        <div class="card">
            <div class="card-img">
                <img src="images/anik.jpg">

            </div>
            <h2>Aniket Shukla<br/><span>Manager</span></h2>
        </div>
        <ul>
            <li><a href=""><i class="fa fa-twitter" aria-hidden="true"></i>Twitter</a></li>
            <li><a href=""><i class="fa fa-facebook" aria-hidden="true"></i>Facebook</a></li>
            <li><a href=""><i class="fa fa-instagram" aria-hidden="true"></i>Instagram</a></li>
            <li><a href=""><i class="fa fa-github" aria-hidden="true"></i>Github</a></li>
            <li><a href=""><i class="fa fa-linkedin" aria-hidden="true"></i>Linkedin</a>  </li>
        </ul>
        <div class="toggle">
            <i class="fa fa-chevron-down" aria-hidden="true"></i>
        </div>
    </div>
    
    
    <div class="container">
        <div class="card">
            <div class="card-img">
                <img src="images/akash.jpg">
            </div>
            <h2>Akash Khainar<br/><span>Maintainance</span></h2>
        </div>
        <ul>
            <li><a href=""><i class="fa fa-twitter" aria-hidden="true"></i>Twitter</a></li>
            <li><a href=""><i class="fa fa-facebook" aria-hidden="true"></i>Facebook</a></li>
            <li><a href=""><i class="fa fa-instagram" aria-hidden="true"></i>Instagram</a></li>
            <li><a href=""><i class="fa fa-github" aria-hidden="true"></i>Github</a></li>
            <li><a href=""><i class="fa fa-linkedin" aria-hidden="true"></i>Linkedin</a>  </li>
        </ul>
        <div class="toggle">
            <i class="fa fa-chevron-down" aria-hidden="true"></i>
        </div>
    </div>
</body>
</html>