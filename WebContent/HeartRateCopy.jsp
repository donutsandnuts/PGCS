<%
//Protects the pages
//if (session.getAttribute("username") == null && session.getAttribute("role") != "client") 
//{response.sendRedirect("ClientLogin.jsp");}
%>










<%

String color = request.getParameter("color");
String period = request.getParameter("period");
String charttype = request.getParameter("charttype");
out.println(color);
out.println(period);
out.println(charttype);


String hexcolor = "#ffffff";

if(color == null){
	hexcolor = "#FF0000";
}
else if(color.equals("red")){
	hexcolor = "#FF0000";
}
else if(color.equals("blue")){
	hexcolor = "#0000FF";
}
else if(color.equals("black")){
	hexcolor = "#000000";
}
else{
	hexcolor = "#000000";
}

%>







































<html>
<head>
<title>Home</title>



		<script src="css/5grid/jquery.js"></script>
		<script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>
		<script src="Chart.js"></script>



</head>
<body>





<!-- Header -->
<iframe src="HeaderIFrame.html" width=100% height=215></iframe>
<!-- End of Header -->





<!-- Session Information -->
<p><%//out.println("Session ID = "+session.getId());%></p>
<p><%//out.println("&nbsp; &nbsp; &nbsp; Logged in as : "+session.getAttribute("username"));%></p>
<p><%//out.println("Role       = "+session.getAttribute("role"));%></p>
<p><%//out.println("&nbsp; &nbsp; &nbsp; Role : "+session.getAttribute("role"));%></p>
<!-- Session Information -->




<!-- Lines Of Separations -->
<!-- Lines Of Separations -->









<!-- Page Wrapper -->
<div id="wrapper" class="5grid-layout">



<!-- Banner Content -->

		
<div id="banner" class="row">
<div class="12u">
<section> 

			

</section>
</div>
</div>
<!-- End of Table -->












<!-- Marketing Content -->
<div id="marketing" class="row">








<div class="3u">
<section class="box">
<h2>&nbsp;</h2>
</section>
</div>


















<div class="3u">
<section class="box">
<h2>Heart Rate Graph</h2>
<p class="subtitle">&nbsp;</p>



<form action="HeartRate.jsp" name="HeartRate" id="HeartRate">
<input type="radio" name="period" value="day" required>		    Day      &nbsp;
<input type="radio" name="period" value="week" required>		Week     &nbsp;
<input type="radio" name="period" value="month" required>		Month    &nbsp;


<br><br>
<br><br>


<select name="charttype">
  <option value="line">Line Chart</option>
  <option value="bar"> Bar Chart</option>
</select>




<!--
</form>
 -->


<br> <br>





</section>
</div>






<div class="3u">
<section class="box">
<h2>&nbsp;</h2>
<p class="subtitle">&nbsp;</p>


<!-- 
<form name="HeartRate" id="HeartRate">
 -->
 
 
 
 

<input type="radio" name="color" value="red" required>
<font color="red">Red</font>  
&nbsp;


<input type="radio" name="color" value="blue" required>
<font color="blue">Blue</font>  
&nbsp;


<input type="radio" name="color" value="black" required>
<font color="black">Black</font>  
&nbsp;


<br><br>




<br> <br>

<input type="submit" form="HeartRate" value="Generate">

</form>





</section>
</div>

















</div>

</div>


	<br> <br>
	
	
		<div style="width:90%" align="center">
			<div>
				<canvas id="canvas" height="450" width="1800" ></canvas>
			</div>
		</div>


	<script>
		var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
		var lineChartData = {
			labels : ["January","February","March","April","May","June","July","August","September"],
			datasets : [
				{
					label: "First dataset",
					fillColor : "rgba(151,187,205,0.2)",
					//strokeColor : "rgba(220,220,220,1)",
					//pointColor : "rgba(220,220,220,1)",
					
					//fillColor : "#fff000",
					strokeColor :  "<%= hexcolor%>",  
					pointColor  :  "<%= hexcolor%>", 
					
					pointStrokeColor : "#fff",
					pointHighlightFill : "#fff",
					pointHighlightStroke : "rgba(220,220,220,1)",
					data : [80,75,70,90,81,87,90,78,88]
				},
				
				/*
				{
					label: "Second dataset",
					fillColor : "rgba(151,187,205,0.2)",
					strokeColor : "rgba(151,187,205,1)",
					pointColor : "rgba(151,187,205,1)",
					pointStrokeColor : "#fff",
					pointHighlightFill : "#fff",
					pointHighlightStroke : "rgba(151,187,205,1)",
					data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
				}
				*/
				
			]

		}

	window.onload = function(){
		var ctx = document.getElementById("canvas").getContext("2d");
		window.myLine = new Chart(ctx).Line(lineChartData, {
			responsive: true
		});
	}


	</script>




<!-- Footer -->
<iframe src="FooterConstant.html" width=100% height=150></iframe>
<!-- End of Footer -->


<!-- End of Code -->
</body>
</html>