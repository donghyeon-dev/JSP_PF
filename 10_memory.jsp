<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body{
	margin:0 auto;
    width: 100%;
    height:800px;
    }
        td{
            border: 2px solid black;
            width: 100px;
            height: 100px;
        }
        td.close:hover{
            /* transition: transform 0.5s;     */
            transform: scale(1.05);
        }
        td.close1 {
            /* background-color: #999; */
            transition: transform 0.5s;    
            transform:rotateY(0deg); 
              
            /* transform-style: preserve-3d; */
        }
        td.close2 {
            /* background-color: #999; */
            transition: transform 0.5s;    
            transform:rotateY(0deg); 
              
            /* transform-style: preserve-3d; */
        }
        td.close3 {
            /* background-color: #999; */
            transition: transform 0.5s;    
            transform:rotateY(0deg); 
              
            /* transform-style: preserve-3d; */
        }
        td.close4 {
            /* background-color: #999; */
            transition: transform 0.5s;    
            transform:rotateY(0deg); 
              
            /* transform-style: preserve-3d; */
        }
        td.close5 {
            /* background-color: #999; */
            transition: transform 0.5s;    
            transform:rotateY(0deg); 
              
            /* transform-style: preserve-3d; */
        }
        
        td.open1{
            transition: transform 0.5s;    
            transform:rotateY(180deg);
            background-image : url("image/memory1.png");
        } 
        td.open2{
            transition: transform 0.5s;    
            transform:rotateY(180deg);
            background-image : url("image/memory2.png");
        } 
        td.open3{
            transition: transform 0.5s;    
            transform:rotateY(180deg);
            background-image : url("image/memory3.png");
        } 
        td.open4{
            transition: transform 0.5s;    
            transform:rotateY(180deg);
            background-image : url("image/memory4.png");
        } 
        td.open5{
            transition: transform 0.5s;    
            transform:rotateY(180deg);
            background-image : url("image/memory5.png");
        } 
        table{
        height:220px;}

</style>
</head>
<body>
	<div class="timer">0.00</div>
    <button onclick="start()">시작</button>
    <button  onclick="stop()">스톱</button>
    <button onclick="reset()">리셋</button>
    <button onclick="basic()">패널 생성</button>
    <table id="game"></table>
    <script src="11_memory2.js"></script>
</body>
</html>