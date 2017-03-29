/**
 * when page has loaded
 * perform JavaScript validation
 */
$(document).ready(function() {
	
	//get current date 
    var date = new Date();

    var day = date.getDate();
    var month = date.getMonth() + 1;
    var year = date.getFullYear();

    if (month < 10){
    	month = "0" + month;
    } 
    if (day < 10){
    	day = "0" + day;
    } 

    var today =  year + "-" + month + "-" + day;       
    $("#theDate").attr("value", today);
	
	/*
	$("#form").submit(function(){
	    var isFormValid = true;

	    $(".input-sm").each(function(){
	        if ($.trim($(this).val()).length == 0){
	        	$(this).removeClass("valid").addClass("invalid");
	            isFormValid = false;
	        }
	        else{
	        	$(this).removeClass("invalid").addClass("valid");
	        }
	    });

	    if (!isFormValid) alert("Please fill in all the  fields that are red ");
	    		return isFormValid;
	    
	});*/
    
   /* $('#form').on('submit', function() {
        return $('#form').jqxValidator('validate');
    });
    $('#testForm')
    .jqxValidator({  rules : [
	       {
	           input : '#firstName',
	           message : 'Country Name is required!',
	           action : 'keyup, blur',
	           rule : 'required'
	       }],
	       theme : theme
    });*/
    
    //Add Category Input for 4.3 Manage Channel Packages
  
    $(function()
    		{
    		    $(document).on('click', '.btn-add', function(e)
    		    {
    		        e.preventDefault();

    		        var controlForm = $('.controls form:first'),
    		            currentEntry = $(this).parents('.entry:first'),
    		            newEntry = $(currentEntry.clone()).appendTo(controlForm);

    		        newEntry.find('input').val('');
    		        controlForm.find('.entry:not(:last) .btn-add')
    		            .removeClass('btn-add').addClass('btn-remove')
    		            .removeClass('btn-success').addClass('btn-danger')
    		            .html('<span class="glyphicon glyphicon-minus"></span>');
    		    }).on('click', '.btn-remove', function(e)
    		    {
    				$(this).parents('.entry:first').remove();

    				e.preventDefault();
    				return false;
    			});
    		});
    
    function init_map1() {
        var myLocation = new google.maps.LatLng(38.885516, -77.09327200000001);
        var mapOptions = {
            center: myLocation,
            zoom: 16
        };
        var marker = new google.maps.Marker({
            position: myLocation,
            title: "Infinity DTH Services"
        });
        var map = new google.maps.Map(document.getElementById("contact-map"),
            mapOptions);
        marker.setMap(map);
    }
    init_map1();
    
}); // NO CODE PAST THIS LINE
