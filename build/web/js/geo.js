
var flag = 0;

var xy = function (position) 
{
        
        var x = position.coords.latitude;
           var y = position.coords.longitude;
            geocodingArea(x,y);
            geocodingCity(x,y);
    };

function showError(error) 
{
	 var flag =0;
     switch (error.code) {
        case error.PERMISSION_DENIED:
            flag=1;
            break;
        case error.POSITION_UNAVAILABLE:
            flag=2;
            break;
        case error.TIMEOUT:
           flag=3;
            break;
        case error.UNKNOWN_ERROR:
            flag=4;
            break;
	return flag;
			 
    }

}
function getLocation() 
{
    if (navigator.geolocation) 
    {
        navigator.geolocation.getCurrentPosition(xy, showError);
    }
}
function geocodingCity(x,y) 
{
        var flag = 0;
	   //23.153626,79.917436
        var url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng='+x+','+y+'&key=AIzaSyCgevtRxWVgLu9ca0FI2ZkZZcIxjPI2lv4';
	   var filteredurl = 'https://maps.googleapis.com/maps/api/geocode/json?latlng='+x+','+y+'&result_type=locality&key=AIzaSyCgevtRxWVgLu9ca0FI2ZkZZcIxjPI2lv4';
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) 
        {   
            var myObj = JSON.parse(this.responseText);
            if(myObj.status=="ok"||myObj.status=="OK")
                document.getElementById("getCity").value =     myObj.results[0].address_components[1].long_name;
            }
            else
            {
                flag = 1;
            }
        };
    if(flag==0)
        xmlhttp.open("GET", filteredurl , true);
    else{
        xmlhttp.open("GET", url , true);
    }
        xmlhttp.send();
        
}
function geocodingArea(x,y)
{
    var url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng='+x+','+y+'&key=AIzaSyCgevtRxWVgLu9ca0FI2ZkZZcIxjPI2lv4';
    var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) 
            {
                var myObj = JSON.parse(this.responseText);
                document.getElementById("getArea").value= myObj.results[0].address_components[1].long_name;
            }
        };
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
      //alert("getArea is called"+x+y);
}