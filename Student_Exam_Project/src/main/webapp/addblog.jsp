<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-container {
            margin-top: 50px;
            background-color: #f8f9fa;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 600px
        }
        .form-group label {
            color: navy;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="container ">
        <div class="row justify-content-center align-items-center vh-100">
    
        <div class="form-container bg-secondary">
            <h2 class="text-center">Student Information</h2>
            <form action="AddSrevlet" method="post">
                <div class="form-group mb-3">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="collageName">College Name</label>
                    <input type="text" id="collageName" name="collageName" class="form-control" required>
                </div>
                
                <h3 class="mt-4">Java Questions</h3>
                
                <div class="form-group mb-3">
                    <label>1. Which of the following is not a Java feature?</label><br>
                    <input type="radio" name="question1" value="Object-oriented" required> Object-oriented<br>
                    <input type="radio" name="question1" value="Use of pointers" required> Use of pointers<br>
                    <input type="radio" name="question1" value="Portable" required> Portable<br>
                    <input type="radio" name="question1" value="Dynamic and Extensible" required> Dynamic and Extensible
                </div>
                
                <div class="form-group mb-3">
                    <label>2. Which of the following is a reserved keyword in Java?</label><br>
                    <input type="radio" name="question2" value="Object" required> Object<br>
                    <input type="radio" name="question2" value="Strictfp" required> Strictfp<br>
                    <input type="radio" name="question2" value="Main" required> Main<br>
                    <input type="radio" name="question2" value="System" required> System
                </div>
                
                <div class="form-group mb-3">
                    <label>3. What is the size of a float and a double in Java?</label><br>
                    <input type="radio" name="question3" value="32 and 64" required> 32 and 64<br>
                    <input type="radio" name="question3" value="32 and 32" required> 32 and 32<br>
                    <input type="radio" name="question3" value="64 and 64" required> 64 and 64<br>
                    <input type="radio" name="question3" value="64 and 32" required> 64 and 32
                </div>
                
                <div class="form-group mb-3">
                    <label>4. Which of the following is a valid declaration of a char?</label><br>
                    <input type="radio" name="question4" value="char ch = '\\utea';" required> char ch = '\\utea';<br>
                    <input type="radio" name="question4" value="char ca = 'tea';" required> char ca = 'tea';<br>
                    <input type="radio" name="question4" value="char cr = \\u0223;" required> char cr = \\u0223;<br>
                    <input type="radio" name="question4" value="char cc = '\\itea';" required> char cc = '\\itea';
                </div>
                
                <div class="form-group mb-3">
                    <label>5. Which of these cannot be used for a variable name in Java?</label><br>
                    <input type="radio" name="question5" value="identifier & keyword" required> identifier & keyword<br>
                    <input type="radio" name="question5" value="identifier" required> identifier<br>
                    <input type="radio" name="question5" value="keyword" required> keyword<br>
                    <input type="radio" name="question5" value="none of the mentioned" required> none of the mentioned
                </div>
                
                <div class="form-group mb-3">
                    <label>6. What is the return type of the hashCode() method in the Object class?</label><br>
                    <input type="radio" name="question6" value="Object" required> Object<br>
                    <input type="radio" name="question6" value="int" required> int<br>
                    <input type="radio" name="question6" value="long" required> long<br>
                    <input type="radio" name="question6" value="void" required> void
                </div>
                
                <div class="form-group mb-3">
                    <label>7. Which of the following is a valid long literal?</label><br>
                    <input type="radio" name="question7" value="ABH8097" required> ABH8097<br>
                    <input type="radio" name="question7" value="L990023" required> L990023<br>
                    <input type="radio" name="question7" value="904423" required> 904423<br>
                    <input type="radio" name="question7" value="0xnf029L" required> 0xnf029L
                </div>
                
                <div class="form-group mb-3">
                    <label>8. What does the expression float a = 35 / 0 return?</label><br>
                    <input type="radio" name="question8" value="0" required> 0<br>
                    <input type="radio" name="question8" value="Not a Number" required> Not a Number<br>
                    <input type="radio" name="question8" value="Infinity" required> Infinity<br>
                    <input type="radio" name="question8" value="Run time exception" required> Run time exception
                </div>
                
                <div class="form-group mb-3">
                    <label>9. Which of the following for loop declaration is not valid?</label><br>
                    <input type="radio" name="question9" value="for ( int i = 99; i >= 0; i / 9 )" required> for ( int i = 99; i >= 0; i / 9 )<br>
                    <input type="radio" name="question9" value="for ( int i = 7; i >= 0; i-- )" required> for ( int i = 7; i >= 0; i-- )<br>
                    <input type="radio" name="question9" value="for ( int i = 20; i >= 2; i = i / 2 )" required> for ( int i = 20; i >= 2; i = i / 2 )<br>
                    <input type="radio" name="question9" value="for ( int i = 2; i <= 20; i = 2* i )" required> for ( int i = 2; i <= 20; i = 2* i )
                </div>
                
                <div class="form-group mb-3">
                    <label>10. Which of the following is true about the anonymous inner class?</label><br>
                    <input type="radio" name="question10" value="It has only methods" required> It has only methods<br>
                    <input type="radio" name="question10" value="Objects can't be created" required> Objects can't be created<br>
                    <input type="radio" name="question10" value="It has a fixed class name" required> It has a fixed class name<br>
                    <input type="radio" name="question10" value="It has no class name" required> It has no class name
                </div>
                
                <button type="submit" class="btn btn-success w-20 text-center">Submit Test</button>
            </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
