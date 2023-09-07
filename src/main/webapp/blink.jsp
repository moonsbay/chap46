<%@ page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>blink.jsp</title>
<style type="text/css">
/* css주석 */
table{
	font-family: monospace; 
	font-size: 2em;   
	border-collapse: collapse;
}
h1{font-size : 40pt;} 

</style>
<script type="text/javascript">
/*
 * 만든이 : 정문섭
 * 작성일 : 2023/08/28
 * 과 목  : Spring Boot 응용
 */

class Blink{
    
	tid = [];  // ';' 생략이 가능하다 이하 똑같다
	
	constructor(ch){
		console.log("생성자호출..." + Math.random())      //생성자호출인지 확인, 생성자 constructor
	}
	
	run(){
//		console.log("run..."+ Math.random())    테스트용 출력
		let table = document.querySelector('table')
		let chid = document.getElementById('alpha_ch').value
//	    console.log(chid)
	    
		
//		for(let i=0; i<20; i++)     전통적 for문
	    for(let tr of table.rows){   //향상된 for문
	    	for(let td of tr.cells){
	    		
	    		if(td.innerHTML== chid){
	    		let id = setInterval(function() {
	    			if(td.style.visibility == 'hidden')
	    				td.style.visibility = 'visible'
	    			else
	    				td.style.visibility = 'hidden'
	    			}, Math.random()*500 + 10);
	    		this.tid.push(id)
	    		}
	    		
	    	}
	    }    
	} 
	
	run_show(){
		
		let table = document.querySelector('table')
		let chid = document.getElementById('alpha_ch').value
	    
		
//		for(let i=0; i<20; i++)     전통적 for문
	    for(let tr of table.rows){   //향상된 for문
	    	for(let td of tr.cells){
	    		
	    		if(td.innerHTML != chid)
	    		    td.style.visibility = 'visible'
	    	}
         }
	}
		
		
	
    
	run_hide(){
    	let table = document.querySelector('table')
		let chid = document.getElementById('alpha_ch').value
//	    console.log(chid)
		
//		for(let i=0; i<20; i++)     전통적 for문
	    for(let tr of table.rows){   //향상된 for문
	    	for(let td of tr.cells){
	    		
	    		if(td.innerHTML != chid)
	    		    td.style.visibility = 'hidden'
	    	}
         }
	}
	
	clear(){
//		console.log(this.tid)      테스트
		for(let id of this.tid)
			clearInterval(id)
	}
	
}



window.onload = function(){
	let start = document.querySelectorAll('button')[0]
	let stop = document.querySelectorAll('button')[1]
	
	let value_ch = document.getElementById('alpha_ch')
	
	let show = document.querySelectorAll('button')[2]
	let hide = document.querySelectorAll('button')[3]
	
	
	start.disabled = false;
	stop.disabled = true;
	hide.disabled = true;
	show.disabled = true;
	//버튼 비활성
	
	let blink;
	
	
		
	start.onclick = function(){
		
		start.disabled = true;
		stop.disabled = false;
		if(show.disabled == true)
		  hide.disabled = false;
		
			
		blink = new Blink();
		
		blink.run();
		if(hide.disabled == true && show.disabled == false)
			blink.run_hide();
		
	}
	
	
	stop.onclick = function(){
		start.disabled = false;
		stop.disabled = true;
		if(hide.disabled == true)
			hide.disabled = true;
		else hide.diabled = false;
		if(show.disabled == true)
			show.disabled = true;
		else 
			show.diabled = false;
			
		
		blink.clear();
	}
	
	hide.onclick = function(){
		hide.disabled = true;
		show.disabled = false;
	    blink.run_hide();
	}
	
	
	show.onclick = function(){
		hide.disabled = false;
		show.disabled = true;
		blink.run_show();
		
	}
}
/*
 * 자바스크립트 주석, 자바와 동일 //도 한줄 주석
 */
//window.onload..
/*  window.addEventListener('load', function() {
  	let table = document.querySelector('table');
  	let cnt = 0;
  	for(let i=0; i<20; i++){
  		//console.log(table.rows[i])
  		for(let j=0; j<40; j++){
 // 			console.log(++cnt);
 // 			console.log(table.rows[i].cells[j]);
  			let td = table.rows[i].cells[j];
  			if(td.innerHTML == 'A'){
  				setInterval(function(){
  				if(td.style.visibility=='hidden')
  				  td.style.visibility = 'visible';
  				else
  					td.style.visibility = 'hidden';
  				}, Math.random()*1000)
  			}
  		}
  	}
  });*/
</script>
<script type="text/javascript">

</script>
</head>
<body>
<h1>Blink 연습</h1>
<button>start</button>
<select id= alpha_ch>

	 <% 
    for(var i=0; i<26; i++){
  %>
  	 <option><%=(char)('A'+ i) %></option>
  <%
    }
  %>
  
<%--   위 for문과 같은 것

	<c:forEach var="i" begin="0" end="25"> 
  	<c:set var="ch" value="<%=(char)((Integer)pageContext.getAttribute(\"i\") + 'A') %>"/>
   	<option>${ch}</option>
  	
    </c:forEach>
--%>

<%--   위 for문과 같은 것
    <c:set var="alphas" value="ABCDEFGHIJKLMNOPQRSTUVWXYZ"/>
	<c:forEach var="i" begin="0" end="25"> 
   	   <option>${alphas.charAt(i)}</option>
    </c:forEach>
--%>

</select>
<script type="text/javascript">



</script>
<button>stop</button>
<button>show</button>
<button>hide</button>
<hr>
<table>
	<tbody>
	<%-- jsp주석 --%>
	<%
		for(var i=0; i<20; i++){
	%>
		<tr>
		<%
			for(var j=0; j<40; j++){
				var a = new Alpha();
		%>
			<td style="color:<%=a.getFg() %>; background:<%=a.getBg()%>"><%=a.getCh()%></td>
		<%
			}
		%>		
		</tr>
		<%
		}
		%>
	</tbody>

</table>
</body>
</html>