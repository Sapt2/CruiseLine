<%-- 
    Document   : scroll
    Created on : 18 May, 2023, 7:04:16 PM
    Author     : Koyel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--AOS-->
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <style>
        #progress {
  position: fixed;
  bottom: 20px;
  right: 10px;
  height: 70px;
  width: 70px;
  display:none;
  place-items: center;
  border-radius: 50%;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  cursor: pointer;
  z-index: 10;
}
#progress-value {
  display: block;
  height: calc(100% - 15px);
  width: calc(100% - 15px);
  background-color: rgb(247, 182, 4);;
  border-radius: 50%;
  display: grid;
  place-items: center;
  font-size: 35px;
  color:#001a2e;
  z-index: 10;
}
html{
  scroll-behavior: smooth;
}

#progress{

z-index: 1000;    
}
    </style>
        </head>
    <body>
    <div id="progress">
    <span id="progress-value">&#x1F815;</span>
    

    
  </div>
        
        
        <script>
        let calcScrollValue = () => {
    let scrollProgress = document.getElementById("progress");
    let progressValue = document.getElementById("progress-value");
    let pos = document.documentElement.scrollTop;
    let calcHeight =
      document.documentElement.scrollHeight -
      document.documentElement.clientHeight;
    let scrollValue = Math.round((pos * 100) / calcHeight);
    if (pos > 100) {
      scrollProgress.style.display = "grid";
    } else {
      scrollProgress.style.display = "none";
    }
    scrollProgress.addEventListener("click", () => {
      document.documentElement.scrollTop = 0;
    });
    scrollProgress.style.background = `conic-gradient(blue ${scrollValue}%, red ${scrollValue}%)`;
  };
  window.onscroll = calcScrollValue;
  window.onload = calcScrollValue;
        </script>
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script src="../js/aos.js"></script>
    </body>
</html>
