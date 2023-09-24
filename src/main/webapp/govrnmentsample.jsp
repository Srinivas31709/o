<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>

h1 {
    text-align: center;
}
h2 {
    margin: 0;
}
#multi-step-form-container {
    margin-top: 5rem;
}
.text-center {
    text-align: center;
}
.mx-auto {
    margin-left: auto;
    margin-right: auto;
}
.pl-0 {
    padding-left: 0;
}
.button {
    padding: 0.7rem 1.5rem;
    border: 1px solid #4361ee;
    background-color: #4361ee;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
}
.submit-btn {
    border: 1px solid #0e9594;
    background-color: #0e9594;
}
.mt-3 {
    margin-top: 2rem;
}
.d-none {
    display: none;
}
.form-step {
    border: 1px solid rgba(0, 0, 0, 0.1);
    border-radius: 20px;
    padding: 3rem;
}
.font-normal {
    font-weight: normal;
}
ul.form-stepper {
    counter-reset: section;
    margin-bottom: 3rem;
}
ul.form-stepper .form-stepper-circle {
    position: relative;
}
ul.form-stepper .form-stepper-circle span {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translateY(-50%) translateX(-50%);
}
.form-stepper-horizontal {
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
}
ul.form-stepper > li:not(:last-of-type) {
    margin-bottom: 0.625rem;
    -webkit-transition: margin-bottom 0.4s;
    -o-transition: margin-bottom 0.4s;
    transition: margin-bottom 0.4s;
}
.form-stepper-horizontal > li:not(:last-of-type) {
    margin-bottom: 0 !important;
}
.form-stepper-horizontal li {
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
    -webkit-box-align: start;
    -ms-flex-align: start;
    align-items: start;
    -webkit-transition: 0.5s;
    transition: 0.5s;
}
.form-stepper-horizontal li:not(:last-child):after {
    position: relative;
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
    height: 1px;
    content: "";
    top: 32%;
}
.form-stepper-horizontal li:after {
    background-color: #dee2e6;
}
.form-stepper-horizontal li.form-stepper-completed:after {
    background-color: #4da3ff;
}
.form-stepper-horizontal li:last-child {
    flex: unset;
}
ul.form-stepper li a .form-stepper-circle {
    display: inline-block;
    width: 40px;
    height: 40px;
    margin-right: 0;
    line-height: 1.7rem;
    text-align: center;
    background: rgba(0, 0, 0, 0.38);
    border-radius: 50%;
}
.form-stepper .form-stepper-active .form-stepper-circle {
    background-color: #4361ee !important;
    color: #fff;
}
.form-stepper .form-stepper-active .label {
    color: #4361ee !important;
}
.form-stepper .form-stepper-active .form-stepper-circle:hover {
    background-color: #4361ee !important;
    color: #fff !important;
}
.form-stepper .form-stepper-unfinished .form-stepper-circle {
    background-color: #f8f7ff;
}
.form-stepper .form-stepper-completed .form-stepper-circle {
    background-color: #0e9594 !important;
    color: #fff;
}
.form-stepper .form-stepper-completed .label {
    color: #0e9594 !important;
}
.form-stepper .form-stepper-completed .form-stepper-circle:hover {
    background-color: #0e9594 !important;
    color: #fff !important;
}
.form-stepper .form-stepper-active span.text-muted {
    color: #fff !important;
}
.form-stepper .form-stepper-completed span.text-muted {
    color: #fff !important;
}
.form-stepper .label {
    font-size: 1rem;
    margin-top: 0.5rem;
}
.form-stepper a {
    cursor: default;
}
body {
  background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
  background-size: 400% 400%;
  animation: gradient 15s ease infinite;
  height: 100vh;
}
@body {
  font-family: 'Josefin Sans', sans-serif;
  box-sizing: border-box;
}
.container-fluid{
  height: 100%;
  margin: 0;
  padding: 0;
  width: 100%;
  background: #FFF;
}
/* ============= Animation background ========= */
.background {
  background: linear-gradient(132deg, #FC415A, #591BC5, #212335);
  background-size: 400% 400%;
  animation: Gradient 15s ease infinite;
  position: relative;
  height: 100vh;
  width: 100%;
  overflow: hidden;
  padding:0;
  margin:0px;
}
.cube {
  position: absolute;
  top: 80vh;
  left: 45vw;
  width: 10px;
  height: 10px;
  border: solid 1px #D7D4E4;
  transform-origin: top left;
  transform: scale(0) rotate(0deg) translate(-50%, -50%);
  animation: cube 12s ease-in forwards infinite;
}
.cube:nth-child(2n) {
  border-color: #FFF ;
}
.cube:nth-child(2) {
  animation-delay: 2s;
  left: 25vw;
  top: 40vh;
}
.cube:nth-child(3) {
  animation-delay: 4s;
  left: 75vw;
  top: 50vh;
}
.cube:nth-child(4) {
  animation-delay: 6s;
  left: 90vw;
  top: 10vh;
}
.cube:nth-child(5) {
  animation-delay: 8s;
  left: 10vw;
  top: 85vh;
}
.cube:nth-child(6) {
  animation-delay: 10s;
  left: 50vw;
  top: 10vh;
}
/* ================= Header ============ */
header{
  position: absolute;
  top:0%;
  left: 0%;
  width:100%;
  margin: 0;
  padding: 0;
}
/* navbar */
nav{
  color: #FFF;
  float: right;
  margin:30px 90px;
}
nav ul{
  list-style: none;
}
nav ul li {
  float: left;
  transition: .3s;
}
nav ul li a{
  text-decoration: none;
  color: #EFEEF5;
  transition: .5;
  font-size: 15px;
  margin-left:16px;
}
nav ul li:hover a{
  text-decoration: none;
  color: #591BC5;;
}
nav ul li:hover{
  height: 45px;
  padding-top: 30px;
  margin-top: -30px;
 background: #EFEEF5;
  text-decoration: none;
  transform: skew(15deg);
}
/* Logo */
.logo{
  width: 35px;
  height: 35px;
  background: #EFEEF5;
  margin: 40px 63px;
  float: left;
  transform: rotate(-30deg);
}
.logo span{
  color: #591BC5;
  font-size: 2em;
  line-height: 1.4;
  padding-left: 5px;
  font-weight: bold;
}
/* Header content & title & button*/
.header-content{
  margin-top:25%;
  text-align: center;
  color:  #EFEEF5;
}
.header-content h1{
  text-transform: uppercase;
  font-size: 3em;
  letter-spacing: 1px;
}
.header-content p {
  font-size: 20px;
  line-height: 1.5;
  margin: 20px auto;
}
.header-content button{
  width: 140px;
  margin:20px 10px;
  color: #591BC5;
  font-size: 17px;
  border:1px solid #EFEEF5;
  font-weight: 500;
  background: #EFEEF5;
  border-radius: 20px;
  padding: 10px;
  cursor:pointer;
  transition: .3s;
}
.header-content button:hover{
  border-radius: 0;
}
/* Animate Background*/
@keyframes Gradient {
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}
@keyframes cube {
  from {
    transform: scale(0) rotate(0deg) translate(-50%, -50%);
    opacity: 1;
  }
  to {
    transform: scale(20) rotate(960deg) translate(-50%, -50%);
    opacity: 0;
  }
}

@import url("https://fonts.googleapis.com/css?family=Mukta:700");
* {
  box-sizing: border-box;
}
*::before, *::after {
  box-sizing: border-box;
}

body {
  font-family: "Mukta", sans-serif;
  font-size: 1rem;
  line-height: 1.5;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0;
  min-height: 100vh;
  background: #f3f8fa;
}

button {
  position: relative;
  display: inline-block;
  cursor: pointer;
  outline: none;
  border: 0;
  vertical-align: middle;
  text-decoration: none;
  background: transparent;
  padding: 0;
  font-size: inherit;
  font-family: inherit;
}
button.learn-more {
  width: 12rem;
  height: auto;
}
button.learn-more .circle {
  transition: all 0.45s cubic-bezier(0.65, 0, 0.076, 1);
  position: relative;
  display: block;
  margin: 0;
  width: 3rem;
  height: 3rem;
  background: #282936;
  border-radius: 1.625rem;
}
button.learn-more .circle .icon {
  transition: all 0.45s cubic-bezier(0.65, 0, 0.076, 1);
  position: absolute;
  top: 0;
  bottom: 0;
  margin: auto;
  background: #fff;
}
button.learn-more .circle .icon.arrow {
  transition: all 0.45s cubic-bezier(0.65, 0, 0.076, 1);
  left: 0.625rem;
  width: 1.125rem;
  height: 0.125rem;
  background: none;
}
button.learn-more .circle .icon.arrow::before {
  position: absolute;
  content: "";
  top: -0.25rem;
  right: 0.0625rem;
  width: 0.625rem;
  height: 0.625rem;
  border-top: 0.125rem solid #fff;
  border-right: 0.125rem solid #fff;
  transform: rotate(45deg);
}
button.learn-more .button-text {
  transition: all 0.45s cubic-bezier(0.65, 0, 0.076, 1);
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  padding: 0.75rem 0;
  margin: 0 0 0 1.85rem;
  color: #282936;
  font-weight: 700;
  line-height: 1.6;
  text-align: center;
  text-transform: uppercase;
}
button:hover .circle {
  width: 100%;
}
button:hover .circle .icon.arrow {
  background: #fff;
  transform: translate(1rem, 0);
}
button:hover .button-text {
  color: #fff;
}

@supports (display: grid) {
  body {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: 0.625rem;
    grid-template-areas: ". main main ." ". main main .";
  }

  #container {
    grid-area: main;
    align-self: center;
    justify-self: center;
  }
}
</style>

<div>

<link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">

<!-- Background & animion & navbar & title -->
  <div class="container-fluid">
<!-- Background animtion-->
    <div class="background">
       <div class="cube"></div>
       <div class="cube"></div>
       <div class="cube"></div>
       <div class="cube"></div>
      <div class="cube"></div>
    </div>
<!-- header -->
   <header>
<!-- navbar -->
<br><br>
<br><br>
    <h1>  _>Marketing Surveys regarding the govt Based Product</h1>
    <div id="multi-step-form-container">
        <!-- Form Steps / Progress Bar -->
        <ul class="form-stepper form-stepper-horizontal text-center mx-auto pl-0">
            <!-- Step 1 -->
            <li class="form-stepper-active text-center form-stepper-list" step="1">
                <a class="mx-2">
                    <span class="form-stepper-circle">
                        <span>1</span>
                    </span>
                    <div class="label"></div>
                </a>
            </li>
            <!-- Step 2 -->
            <li class="form-stepper-unfinished text-center form-stepper-list" step="2">
                <a class="mx-2">
                    <span class="form-stepper-circle text-muted">
                        <span>2</span>
                    </span>
                    <div class="label text-muted"></div>
                </a>
            </li>
            <!-- Step 3 -->
            <li class="form-stepper-unfinished text-center form-stepper-list" step="3">
                <a class="mx-2">
                    <span class="form-stepper-circle text-muted">
                        <span>3</span>
                    </span>
                    <div class="label text-muted"></div>
                </a>
            </li>
            <!-- Step 4 -->
            <li class="form-stepper-unfinished text-center form-stepper-list" step="4">
                <a class="mx-2">
                    <span class="form-stepper-circle text-muted">
                        <span>4</span>
                    </span>
                    <div class="label text-muted"></div>
                </a>
            </li>
        </ul>
        <!-- Step Wise Form Content -->
        <form id="userAccountSetupForm" name="userAccountSetupForm" enctype="multipart/form-data" method="POST">
            <!-- Step 1 Content -->
            <center>
            <section id="step-1" class="form-step">
                
                <!-- Step 1 input fields -->
           
<div class="row col-5">
  <h4 class="fw-bold text-center mt-3"></h4>
  <form class=" bg-white px-4" action="">
    <h2><p class="fw-bold">Our customer service agent had the necessary knowledge about your query?</p></h2>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample1" />
      <label class="form-check-label" for="radioExample1">
        Strongly Agree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample2" />
      <label class="form-check-label" for="radioExample2">
        Somewhat Agree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample3" />
      <label class="form-check-label" for="radioExample3">
        Somewhat Disagree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample3" />
      <label class="form-check-label" for="radioExample3">
        Strongly Disagree
      </label>
    </div>
  </form>
  
</div>
                <div class="mt-3">
                    <button class="button btn-navigate-form-step" type="button" step_number="2">Next</button>
                </div>
            </section>
            </center>
            <center>
            <!-- Step 2 Content, default hidden on page load. -->
            <section id="step-2" class="form-step d-none">
                                
<div class="row col-5">
  <h4 class="fw-bold text-center mt-3"></h4>
  <form class=" bg-white px-4" action="">
    <h2><p class="fw-bold">To what extent, do you agree or disagree regarding our help services?</p></h2>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample1" />
      <label class="form-check-label" for="radioExample1">
        Strongly Agree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample2" />
      <label class="form-check-label" for="radioExample2">
        Somewhat Agree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample3" />
      <label class="form-check-label" for="radioExample3">
        Somewhat Disagree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample3" />
      <label class="form-check-label" for="radioExample3">
        Strongly Disagree
      </label>
    </div>
  </form>
  
</div>
                <div class="mt-3">
                    <button class="button btn-navigate-form-step" type="button" step_number="1">Prev</button>
                    <button class="button btn-navigate-form-step" type="button" step_number="3">Next</button>
                </div>
            </section>
            </center>
            <center>
            <!-- Step 3 Content, default hidden on page load. -->
            <section id="step-3" class="form-step d-none">
                                
<div class="row col-5">
  <h4 class="fw-bold text-center mt-4"></h4>
  <form class=" bg-white px-4" action="">
    <h2><p class="fw-bold">What extent do you agree or disagree about new features in our product?</p></h2>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample1" />
      <label class="form-check-label" for="radioExample1">
        Strongly Agree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample2" />
      <label class="form-check-label" for="radioExample2">
        Somewhat Agree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample3" />
      <label class="form-check-label" for="radioExample3">
        Somewhat Disagree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample3" />
      <label class="form-check-label" for="radioExample3">
        Strongly Disagree
      </label>
    </div>
  </form>
  
</div>
                <div class="mt-3">
                    <button class="button btn-navigate-form-step" type="button" step_number="2">Prev</button>
                    <button class="button btn-navigate-form-step" type="button" step_number="4">Next</button>
                </div>
            </section>
        </form>
    </div>
    </center>
    <center>
    <!-- Step 3 Content, default hidden on page load. -->
            <section id="step-4" class="form-step d-none">
                                
<div class="row col-5">
  <h4 class="fw-bold text-center mt-5"></h4>
  <form class=" bg-white px-4" action="">
    <h2><p class="fw-bold">Are you prepared to pay more for a mobile phone case in premium packaging?</p></h2>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample1" />
      <label class="form-check-label" for="radioExample1">
        Strongly Agree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample2" />
      <label class="form-check-label" for="radioExample2">
        Somewhat Agree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample3" />
      <label class="form-check-label" for="radioExample3">
        Somewhat Disagree
      </label>
    </div>
    <div class="form-check mb-2">
      <input class="form-check-input" type="radio" name="exampleForm" id="radioExample3" />
      <label class="form-check-label" for="radioExample3">
        Strongly Disagree
      </label>
    </div>
  </form>
  
</div>
<br></br>
                <div class="mt-4">
                    <button class="button btn-navigate-form-step" type="button" step_number="3">Prev</button>
                    <button class="button submit-btn" type="submit"><a href="result">Submit</a></button>
                </div>
            </section>
            </center>
        </form>
    </div>
</div>
<script type="text/javascript">
const navigateToFormStep = (stepNumber) => {
    /**
     * Hide all form steps.
     */
    document.querySelectorAll(".form-step").forEach((formStepElement) => {
        formStepElement.classList.add("d-none");
    });
    /**
     * Mark all form steps as unfinished.
     */
    document.querySelectorAll(".form-stepper-list").forEach((formStepHeader) => {
        formStepHeader.classList.add("form-stepper-unfinished");
        formStepHeader.classList.remove("form-stepper-active", "form-stepper-completed");
    });
    /**
     * Show the current form step (as passed to the function).
     */
    document.querySelector("#step-" + stepNumber).classList.remove("d-none");
    /**
     * Select the form step circle (progress bar).
     */
    const formStepCircle = document.querySelector('li[step="' + stepNumber + '"]');
    /**
     * Mark the current form step as active.
     */
    formStepCircle.classList.remove("form-stepper-unfinished", "form-stepper-completed");
    formStepCircle.classList.add("form-stepper-active");
    /**
     * Loop through each form step circles.
     * This loop will continue up to the current step number.
     * Example: If the current step is 3,
     * then the loop will perform operations for step 1 and 2.
     */
    for (let index = 0; index < stepNumber; index++) {
        /**
         * Select the form step circle (progress bar).
         */
        const formStepCircle = document.querySelector('li[step="' + index + '"]');
        /**
         * Check if the element exist. If yes, then proceed.
         */
        if (formStepCircle) {
            /**
             * Mark the form step as completed.
             */
            formStepCircle.classList.remove("form-stepper-unfinished", "form-stepper-active");
            formStepCircle.classList.add("form-stepper-completed");
        }
    }
};
/**
 * Select all form navigation buttons, and loop through them.
 */
document.querySelectorAll(".btn-navigate-form-step").forEach((formNavigationBtn) => {
    /**
     * Add a click event listener to the button.
     */
    formNavigationBtn.addEventListener("click", () => {
        /**
         * Get the value of the step.
         */
        const stepNumber = parseInt(formNavigationBtn.getAttribute("step_number"));
        /**
         * Call the function to navigate to the target form step.
         */
        navigateToFormStep(stepNumber);
    });
});
</script>
</html>
