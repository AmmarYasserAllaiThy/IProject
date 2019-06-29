<%--
  Created by IntelliJ IDEA.
  User: ammar
  Date: 5/11/18
  Time: 4:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <meta charset="UTF-8">
    <link href="CSS/home.css" type="text/css" rel="stylesheet">
    <link rel="icon" href="img/icon.png">
    <link href="https://fonts.googleapis.com/css?family=Comfortaa" rel="stylesheet">
    <!--    
        <script type="text/javascript" src="/mnt/hgfs/MyHDD/My Projects/Portfolio/jquery-3.3.1.min.js"></script>
        <script src="/mnt/hgfs/MyHDD/My Projects/Portfolio/RGB to Hex.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    -->
    <title>Home</title>
</head>

<%
    String username = session.getAttribute("user").toString();
%>
<header>
    <h1>C<span>o</span>l<span>o</span>r</h1>
    <p align="right"><button id="username"><%= username%></button></p>
    <p id="p">
        <a href="#generate" class="tabs">Generate</a>
        <a href="#myColors" class="tabs">My Colors</a>
        <a href="#select-theme" class="tabs">Themes</a>
    </p>
</header>
<section>
    <div id="generate">
        <center id="center">
            <h1 id="h1">RGB –> Hex, and vice versa</h1>
            <p class="inputLabel">RGB<span>(</span>
                <input name="R" type="number" class="R RGB" max="255" value="50" required> ,
                <input name="G" type="number" class="G RGB" max="255" value="50" required> ,
                <input name="B" type="number" class="B RGB" max="255" value="50" required>
                <span>)</span>;
            </p>
            <p class="inputLabel">
                Hex: #<input name="hex" type="text" class="hex" maxlength="6" value="323232" required>;
            </p>
            <button id="gen" class="buttons" onclick="generate()">Generate</button>
            <button id="save" class="buttons" onclick="saveToMyColors()">Save Color</button>
        </center>
    </div>
    <hr>
    <div id="myColors">
        <button id="clear" class="buttons">Clear</button>
    </div>
    <hr>
    <div id="select-theme">
        <center>
            <label class="themes">
                <label class="theme-header">Theme: 1</label><br>
                <button id="col-1-1" class="theme-color"></button>
                <button id="col-1-2" class="theme-color"></button>
                <button id="col-1-3" class="theme-color"></button>
                <button id="col-1-4" class="theme-color"></button>
                <button id="col-1-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 2</label><br>
                <button id="col-2-1" class="theme-color"></button>
                <button id="col-2-2" class="theme-color"></button>
                <button id="col-2-3" class="theme-color"></button>
                <button id="col-2-4" class="theme-color"></button>
                <button id="col-2-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 3</label><br>
                <button id="col-3-1" class="theme-color"></button>
                <button id="col-3-2" class="theme-color"></button>
                <button id="col-3-3" class="theme-color"></button>
                <button id="col-3-4" class="theme-color"></button>
                <button id="col-3-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 4</label><br>
                <button id="col-4-1" class="theme-color"></button>
                <button id="col-4-2" class="theme-color"></button>
                <button id="col-4-3" class="theme-color"></button>
                <button id="col-4-4" class="theme-color"></button>
                <button id="col-4-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 1</label><br>
                <button id="col-5-1" class="theme-color"></button>
                <button id="col-5-2" class="theme-color"></button>
                <button id="col-5-3" class="theme-color"></button>
                <button id="col-5-4" class="theme-color"></button>
                <button id="col-5-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 2</label><br>
                <button id="col-6-1" class="theme-color"></button>
                <button id="col-6-2" class="theme-color"></button>
                <button id="col-6-3" class="theme-color"></button>
                <button id="col-6-4" class="theme-color"></button>
                <button id="col-6-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 3</label><br>
                <button id="col-7-1" class="theme-color"></button>
                <button id="col-7-2" class="theme-color"></button>
                <button id="col-7-3" class="theme-color"></button>
                <button id="col-7-4" class="theme-color"></button>
                <button id="col-7-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 4</label><br>
                <button id="col-8-1" class="theme-color"></button>
                <button id="col-8-2" class="theme-color"></button>
                <button id="col-8-3" class="theme-color"></button>
                <button id="col-8-4" class="theme-color"></button>
                <button id="col-8-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 1</label><br>
                <button id="col-9-1" class="theme-color"></button>
                <button id="col-9-2" class="theme-color"></button>
                <button id="col-9-3" class="theme-color"></button>
                <button id="col-9-4" class="theme-color"></button>
                <button id="col-9-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 2</label><br>
                <button id="col-10-1" class="theme-color"></button>
                <button id="col-10-2" class="theme-color"></button>
                <button id="col-10-3" class="theme-color"></button>
                <button id="col-10-4" class="theme-color"></button>
                <button id="col-10-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 3</label><br>
                <button id="col-11-1" class="theme-color"></button>
                <button id="col-11-2" class="theme-color"></button>
                <button id="col-11-3" class="theme-color"></button>
                <button id="col-11-4" class="theme-color"></button>
                <button id="col-11-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 4</label><br>
                <button id="col-12-1" class="theme-color"></button>
                <button id="col-12-2" class="theme-color"></button>
                <button id="col-12-3" class="theme-color"></button>
                <button id="col-12-4" class="theme-color"></button>
                <button id="col-12-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 1</label><br>
                <button id="col-13-1" class="theme-color"></button>
                <button id="col-13-2" class="theme-color"></button>
                <button id="col-13-3" class="theme-color"></button>
                <button id="col-13-4" class="theme-color"></button>
                <button id="col-13-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 2</label><br>
                <button id="col-14-1" class="theme-color"></button>
                <button id="col-14-2" class="theme-color"></button>
                <button id="col-14-3" class="theme-color"></button>
                <button id="col-14-4" class="theme-color"></button>
                <button id="col-14-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 3</label><br>
                <button id="col-15-1" class="theme-color"></button>
                <button id="col-15-2" class="theme-color"></button>
                <button id="col-15-3" class="theme-color"></button>
                <button id="col-15-4" class="theme-color"></button>
                <button id="col-15-5" class="theme-color"></button>
            </label>
            <label class="themes">
                <label class="theme-header">Theme: 3</label><br>
                <button id="col-16-1" class="theme-color"></button>
                <button id="col-16-2" class="theme-color"></button>
                <button id="col-16-3" class="theme-color"></button>
                <button id="col-16-4" class="theme-color"></button>
                <button id="col-16-5" class="theme-color"></button>
            </label>
        </center>
    </div>
</section>

<%-- //Generate
    HttpSession s = request.getSession(false);
    String r, g, b, hex;
    r = (String) s.getAttribute("R");
    g = (String) s.getAttribute("G");
    b = (String) s.getAttribute("B");
    hex = (String) s.getAttribute("hex");
    // #center.backgruond-color = RGB(r,g,b);
%>
<% //Save()
    // myColors.addLabel(new Color(r,g,b));
    // cookie.addCookie();
%>
<% //Clear()
    //myColors.deleteAll();
--%>

<footer><b>C<span>o</span>l<span>o</span>r</b> is a Java-based website</footer>

<%--<div class="container">
    <input type="radio" name="nav" id="first" checked/>
    <input type="radio" name="nav" id="second"/>
    <input type="radio" name="nav" id="third"/>

    <label for="first" class="first divLabel">Generate</label>
    <label for="second" class="second divLabel">My Colors</label>
    <label for="third" class="third divLabel">Themes</label>

    <div class="one slide">

    </div>
    <div class="two slide">

    </div>
    <div class="three slide">

    </div>
</div>--%>