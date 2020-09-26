<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
    font-family:'Lato',sans-serif;
}
#quiz {

    margin-left:0px;
    background:#d2def2;
    padding:10px 20px 10px 20px;
    width:device-width;
    border-radius:20px;
    float:left;
}


h1 {
    text-align:center;
}


#input {
    margin-border:20px;
    display:block ;
}


#textbox {
    height:22px;
    width:120px;
    font-size:16px;
    border-radius:5px;
    border:none;
    padding-left:5px; 
}


#button {
    background:green;
    border:none;
    border-radius:5px;
    padding:10px;
    color:white;
    font-size:16px;
    transition-duration:.5s;
    margin-top:15px;
}


#button.hover {
    background:white;
    border:1px solid green;
    color:black;
    cursor:pointer;
   
}


#after_submit {
    visibility:hidden;
    background:#0000ff;
    padding:10px 20px 10px 20px;
    width:device-width;
    border-radius:20px;
    float:left;
    margin-left:20px;
    font-size:30px;
}


#pictures {
    width:100%;
    height:100%;
}

a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: graytext;
}
</style>
<meta charset="ISO-8859-1">
<title>Quiz</title>
</head>
<body>
	<form action="details" method="get" id="quiz" name="quiz">
	<h1>Quiz</h1>
	 <p>${model.get(0).question }</p>
     <input type="radio" id="mc" name="question1" value="${model.get(0).choice1 }">${model.get(0).choice1 }<br>
     <input type="radio" id="mc" name="question1" value="${model.get(0).choice2 }">${model.get(0).choice2 }<br>
     <input type="radio" id="mc" name="question1" value="${model.get(0).choice3 }">${model.get(0).choice3 }<br>
     <input type="radio" id="mc" name="question1" value="${model.get(0).choice4 }">${model.get(0).choice4 }<br>
     
     <p>${model.get(1).question }</p>
     <input type="radio" id="mc" name="question2" value="${model.get(1).choice1 }">${model.get(1).choice1 }<br>
     <input type="radio" id="mc" name="question2" value="${model.get(1).choice2 }">${model.get(1).choice2 }<br>
     <input type="radio" id="mc" name="question2" value="${model.get(1).choice3 }">${model.get(1).choice3 }<br>
     <input type="radio" id="mc" name="question2" value="${model.get(1).choice4 }">${model.get(1).choice4 }<br>
     
     <p>${model.get(2).question }</p>
     <input type="radio" id="mc" name="question3" value="${model.get(2).choice1 }">${model.get(2).choice1 }<br>
     <input type="radio" id="mc" name="question3" value="${model.get(2).choice2 }">${model.get(2).choice2 }<br>
     <input type="radio" id="mc" name="question3" value="${model.get(2).choice3 }">${model.get(2).choice3 }<br>
     <input type="radio" id="mc" name="question3" value="${model.get(2).choice4 }">${model.get(2).choice4 }<br>
     
     <p>${model.get(3).question }</p>
     <input type="radio" id="mc" name="question4" value="${model.get(3).choice1 }">${model.get(3).choice1 }<br>
     <input type="radio" id="mc" name="question4" value="${model.get(3).choice2 }">${model.get(3).choice2 }<br>
     <input type="radio" id="mc" name="question4" value="${model.get(3).choice3 }">${model.get(3).choice3 }<br>
     <input type="radio" id="mc" name="question4" value="${model.get(3).choice4 }">${model.get(3).choice4 }<br>
     
     <p>${model.get(4).question }</p>
     <input type="radio" id="mc" name="question5" value="${model.get(4).choice1 }">${model.get(4).choice1 }<br>
     <input type="radio" id="mc" name="question5" value="${model.get(4).choice2 }">${model.get(4).choice2 }<br>
     <input type="radio" id="mc" name="question5" value="${model.get(4).choice3 }">${model.get(4).choice3 }<br>
     <input type="radio" id="mc" name="question5" value="${model.get(4).choice4 }">${model.get(4).choice4 }<br>
     
     <p>${model.get(5).question }</p>
     <input type="radio" id="mc" name="question6" value="${model.get(5).choice1 }">${model.get(5).choice1 }<br>
     <input type="radio" id="mc" name="question6" value="${model.get(5).choice2 }">${model.get(5).choice2 }<br>
     <input type="radio" id="mc" name="question6" value="${model.get(5).choice3 }">${model.get(5).choice3 }<br>
     <input type="radio" id="mc" name="question6" value="${model.get(5).choice4 }">${model.get(5).choice4 }<br>
     
     <p>${model.get(6).question }</p>
     <input type="radio" id="mc" name="question7" value="${model.get(6).choice1 }">${model.get(6).choice1 }<br>
     <input type="radio" id="mc" name="question7" value="${model.get(6).choice2 }">${model.get(6).choice2 }<br>
     <input type="radio" id="mc" name="question7" value="${model.get(6).choice3 }">${model.get(6).choice3 }<br>
     <input type="radio" id="mc" name="question7" value="${model.get(6).choice4 }">${model.get(6).choice4 }<br>
     
     <p>${model.get(7).question }</p>
     <input type="radio" id="mc" name="question8" value="${model.get(7).choice1 }">${model.get(7).choice1 }<br>
     <input type="radio" id="mc" name="question8" value="${model.get(7).choice2 }">${model.get(7).choice2 }<br>
     <input type="radio" id="mc" name="question8" value="${model.get(7).choice3 }">${model.get(7).choice3 }<br>
     <input type="radio" id="mc" name="question8" value="${model.get(7).choice4 }">${model.get(7).choice4 }<br>
     
     <p>${model.get(8).question }</p>
     <input type="radio" id="mc" name="question9" value="${model.get(8).choice1 }">${model.get(8).choice1 }<br>
     <input type="radio" id="mc" name="question9" value="${model.get(8).choice2 }">${model.get(8).choice2 }<br>
     <input type="radio" id="mc" name="question9" value="${model.get(8).choice3 }">${model.get(8).choice3 }<br>
     <input type="radio" id="mc" name="question9" value="${model.get(8).choice4 }">${model.get(8).choice4 }<br>
     
     <p>${model.get(9).question }</p>
     <input type="radio" id="mc" name="question10" value="${model.get(9).choice1 }">${model.get(9).choice1 }<br>
     <input type="radio" id="mc" name="question10" value="${model.get(9).choice2 }">${model.get(9).choice2 }<br>
     <input type="radio" id="mc" name="question10" value="${model.get(9).choice3 }">${model.get(9).choice3 }<br>
     <input type="radio" id="mc" name="question10" value="${model.get(9).choice4 }">${model.get(9).choice4 }<br><br>
     
     
     <input id="button" type="submit" value="I'm finished!" onclick="result()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <a href="/" >Quit Exam</a>
     </form>

</body>
</html>