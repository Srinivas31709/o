<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="form.css">
    <title>Survey Form</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

:root{
    --color-white:#f3f3f3;
    --color-darkblue:#796ec8;
    --color-darkblue-alpha:rgba(13, 138, 187, 0.8);
    --color-green:#21eb6e;
}
*,*::before,*::after{
    box-sizing: border-box;
}
body{
    font-family: 'Poppins',sans-serif;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.4;
    color: var(--color-white);
    margin: 0;
}
body::before{
    content: '';
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    z-index: -1;
    background: var(--color-darkblue);
    background-image: linear-gradient(215deg,rgba(75, 113, 179, 0.8),rgba(124, 192, 147, 0.8)),url(/developers.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
}
#title{
    color: var(--color-green);
    font-weight: 600;
    
    
}
h1{
    font-weight: 400;
    line-height: 1.2;
}
p{
    font-size: 1.125rem;
}
h1,p{
    margin-top: 0;
    margin-bottom: 0.5rem;
}
label{
    display: flex;
    align-items: center;
    font-size: 1.125rem;
    margin-bottom: 0.5rem;
}

input,button,select,textarea{
    margin: 0;
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
.container{
    width: 100%;
    margin: 3.125rem auto 0 auto;
    padding:1.8rem 1rem;
}

.header{
    padding: 0 0.625rem;
    margin-bottom: 1.875rem;
    text-align: center;
}
#description{
    font-style: italic;
    font-weight: 200;
    text-shadow: 1px 1px 1px rgba(0,0,0,0.4);

}
.clue{
    margin-left: 0.25rem;
    font-size: 0.9rem;
    color: #e4e4e4;
}
#quest{
    color: rgb(241, 191, 98);
    font-size: 1.5rem;
}
form{
    background: var(--color-darkblue-alpha);
    border-radius: 0.25rem;
}

@media (min-width: 480px){
    form{
        padding: 2.5rem;
    }
}
.form-control{
    margin: 0 auto 1.25rem auto;
    padding: 0.25rem;
}
.formControl{
    display: block;
    width: 100%;
    height: 2.375rem;
    padding: 0.375rem 0.75rem;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    transition: border-color 0.15s ease-in-out,box-shadow 0.15s ease-in-out;
}
.formControl:focus{
    border-color:blue;
    outline: 0;
    box-shadow:0 0 0 0.2rem rgba(0,123,255,0.25)
}
.inputRadio,
.checkbox
{
    display: inline-block;
    margin-right: 0.625rem;
    min-height: 1.25rem;
    min-width: 1.25rem;

}
.textarea{
    width: 100%;
    padding: 0.75rem;
    font-size: 1.15rem;
    outline: none;
    border-color: blue;
    border-radius: 5px;
}
.btn{
    display: block;
    width: 100%;
    padding:0.5rem 0.75rem;
    background: var(--color-green);
    color: inherit;
    border-radius: 15px;
    cursor: pointer;
    outline: none;
    text-transform: uppercase;
    font-size: 1.5rem;
    color: blue;
    border: none;
}

@media (min-width:576px){
    .container{
        max-width: 540px;
    }
}
@media (min-width:800px){
    .container{
        max-width: 760px;
    }
}
</style>
<body>
    <div class="container ">
        <header class="header">
            <h1 id="title">
                Survey from WEBHUB
            </h1>
            <p id="description">
                Thank you for taking the time to help us to improve the platform
            </p>
        </header>
        <form action="" id="survey-form">

            
        <div class="form-control">
                <p id="quest">Do you think the existing government is going in the right direction to benefit the people of the country? </p>
                <label for="">
                    <input type="radio" name="source" value="freinds"
                    class="inputRadio"
                    > Agree
                </label>
                <label for="">
                    <input type="radio" name="source" value="tv-ads"
                    class="inputRadio"
                    >Disagree
                </label>
              
            </div>
            <div class="form-control">
                <p id="quest">There should be more strict laws and regulations to eradicate corruption. </p>
                <label for="">
                    <input type="radio" name="source" value="freinds"
                    class="inputRadio"
                    > Agree
                </label>
                <label for="">
                    <input type="radio" name="source" value="tv-ads"
                    class="inputRadio"
                    >Disagree
                </label>
              
            </div>
            <div class="form-group">
                <p id="quest"><div class="form-group">
                <p id="quest">There should be more strict laws and regulations to eradicate corruption. </p>
                <label for="">
                    <input type="radio" name="source" value="freinds"
                    class="inputRadio"
                    > Agree
                </label>
                <label for="">
                    <input type="radio" name="source" value="tv-ads"
                    class="inputRadio"
                    >Disagree
                </label>
              
            </div>
            <div class="form-group">
                <p id="quest"><div class="form-group">
                <p id="quest">Environment safety is more important than business tax revenue.</p>
                <label for="">
                    <input type="radio" name="source" value="freinds"
                    class="inputRadio"
                    > Agree
                </label>
                <label for="">
                    <input type="radio" name="source" value="tv-ads"
                    class="inputRadio"
                    >Disagree
                </label>
              
            </div>
            <div class="form-group">
                <p id="quest">Which party do you support to handle sensitive topics such as national security?</p>
                <label for="">
                    <input type="radio" name="source" value="freinds"
                    class="inputRadio"
                    > Democrats
                </label>
                <label for="">
                    <input type="radio" name="source" value="tv-ads"
                    class="inputRadio"
                    >Republicans
                </label>
    <label for="">
                    <input type="radio" name="source" value="tv-ads"
                    class="inputRadio"
                    >I don't support any party
                </label>
            </div>
            <div class="form-group">
                <button type="submit" id="submit" class="btn">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>