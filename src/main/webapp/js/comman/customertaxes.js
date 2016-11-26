


function getApplyeTaxOfCustomer()
{
	hide();
	var custName=$("#custName").val();

	$.getJSON('getApplyeTaxOfCustomer.html',{custName:custName}).done(function(json) {
		
	//alert(json[0].custVat)
		
		if(json[0].custGst=="YES")
		{
			
			 $("#gstdiv").show();
		}
	
		
		if(json[0].custCst=="YES")
		{ 
			
			 $("#cstdiv").show();
		}
		
		if(json[0].custExcise=="YES")
		{
			$("#excisediv").show();
			var exiseamt=parseFloat(document.getElementById("bTotal").value)*0.125;
			document.getElementById("exciseAmt").value=Math.round(exiseamt);
		
		}
		if(json[0].custVat=="YES")
		{
			 $("#vatdiv").show();
			 var vatamt=(parseFloat(document.getElementById("bTotal").value)+parseFloat(document.getElementById("exciseAmt").value))*0.125;
			document.getElementById("vatAmt").value=Math.round(vatamt);
				
			var netAmt=parseFloat(document.getElementById("bTotal").value)+parseFloat(document.getElementById("exciseAmt").value)+parseFloat(document.getElementById("vatAmt").value)
			document.getElementById("netAmt").value= Math.round(netAmt);
			
		}
		
		if(json[0].custServiceTax=="YES")
		{
			 $("#servicetaxdiv").show();
		}
		
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
	});

	
}
