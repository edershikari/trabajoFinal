
$(document).ready(function(){	
	$("#subJson").on("click", function(e){
    	
		var idDirector = $("#idDirector").text();
		var param= 'idDirector='+idDirector;
  	
    	$.ajax({
    		url: 'CShowDirectorFilms' ,
    		method: 'GET',
    		data : param, 
    		dataType : 'json',
    		success : function(datuak) {
    			
    			//console.log(datuak);
    			$("#directorFilms").toggleClass("d-block");
    			$("#films *").remove();
    			//$(datuak).each(function(index,info) {
    				for (var i in datuak) { 	
					var newRow ="<tr>"
					+"<td>"+datuak[i].title +"</td>"
					+ "<td>"+datuak[i].year +"</td>"
					+"<td><img src='"+datuak[i].poster +"' style='max-width:100px'/></td>"
					+"<td>"+datuak[i].IMDB +"</td>"  + "</tr>";
					 
					$("#films").append(newRow);
					//console.log(newRow);
    			//});
    				}
   			},
   			error : function(xhr) {
   				alert("An error occured: " + xhr.status + " " + xhr.statusText+" HORROOOOORR");
   			}	
         }); //ajax
	 });//click subJson
	
	$("#subJson2").on("click", function(e){
    	
    	var param = '';
    	 
    	$('input[type="checkbox"]:checked').each(function(){
    		 param += '&chkDirectors=' + $(this).val();
    	 });
    	 
    	$.ajax({
    		url: 'CShowSelectedDirectors' ,
    		method: 'GET',
    		data : param ,
    		dataType : 'json',
    		success : function(datuak) {
    			
    			//console.log(datuak);
    			$("#directorFilms").toggleClass("d-block");
    			$("#films *").remove();
    			
    			$(datuak).each(function(index,info) {
					var newRow ="<tr>"
					+"<td>"+info.name +"</td>"
					+ "<td>"+info.counter +"</td>"  + "</tr>";
					                         
					$("#films").append(newRow);
					//console.log(newRow);
    			});		
    			
   			},
   			error : function(xhr) {
   				alert("An error occured: " + xhr.status + " " + xhr.statusText);
   				
   			}	
         }); //ajax
	 });//click subJson2
	
 })//function
