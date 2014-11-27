<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name ="viewport" content="width=device-width, initial-scale=1"/>
<body bgcolor="#E6E6FA">



<div align = "center">
<h2>
<a href="Home.jsp"><img src="images/button_back.png" align="left"></a>
Current Location
<a href="Home.jsp"><img src="images/button_menu.png" alt ="-.-"  align="right"></a></h2>



<script	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false"> </script>

<script>
var myCenter=new google.maps.LatLng(1.379300, 103.8500);
var marker;

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:16,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

marker=new google.maps.Marker({
  position:myCenter,
  animation:google.maps.Animation.BOUNCE
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>



<div id="googleMap" style="width:300px;height:300px; margin-left: auto; margin-right: auto;"></div>

<br>
	
	<script>function goBack() {window.history.back();}</script>
	<button onclick="goBack()">Go Back</button>


</div>

</body>
</html>