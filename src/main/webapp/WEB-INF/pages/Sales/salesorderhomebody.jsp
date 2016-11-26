


<body onload="calculateTotal()">
<fieldset class="fieldset-style">
<form role="form" action="savesalesOrderDetail.html" >
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Sales Order Entry</div>
						<div class="span3" align="right">
						
						
							<button type="button" class="btn" title="Get Item Code" onclick="getcustItemList()">
  								<i class="icon-search"></i>
							</button>
							
								<div class="btn" align="left" title="Sales Home" onclick="gethomepage()" >
							<i class="icon-home"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							<!-- <button class="btn-save" title="Save" onclick="createUser();" id="btnsave"></button> -->
							
							<!-- <button class="btn-save" title="Save" type="submit"></button> -->
							<!-- <div class="btn" title="Cancel" onclick="clearForm();" id="btnclear">
								<i class="icon-trash"></i>
							</div> -->
						</div>
					</div>
				</div>
			</div>


<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						<input type="hidden" name="saleorderno" value="${saleorderno}">
						<div class="control-group">
							<label class="control-label">Customer Name</label>
							<div class="controls">
						<input type="text" name="custName" id="custName" class="form-control" required="required" placeholder="" value="${custName}" />
							</div>
						</div>
					</div>
					
					<div class="firstquad">
					<div class="control-group">
								<label class="control-label">PO Number</label>
								<div class="controls">
										<input type="text" class="form-control"
								name="poNo" id="poNo" required="required" placeholder="" value="${pono}"/>
								</div>
							</div>
					</div>
					<div class="control-group">
							<label class="control-label">PO Date</label>
							<div class="controls">
								<input type="text" class="form-control"
							required="required"	name="poDate" required="required"  id="poDate" placeholder="" value="${podate}"/>
							</div>
						</div>
				
					
			</div>
</div>
	<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Item Entry</div>
							<div class="span3" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" title="Add Purchase Item">
							</div>
					</div>	
				</div>
			</div>		

			<!--      Actual Form -->
			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
					
						
						
						
						 <div class="control-group">
							<label class="control-label">Item Code</label>
							<div class="controls">
								<select class="form-control" name="itemCode" id="itemCode"></select>
							</div>
						</div>
					 <div class="control-group">
							<label class="control-label">Unit</label>
								<input type="text" class="form-control" required="required"
							name="unit" id="unit" value="NO" placeholder="" /></div>
					<div class="control-group">
							<label class="control-label">Dilevery Date</label>
							<div class="controls">
							<input type="date" required="required"
							class="form-control" id="dilDate" name="dilDate" placeholder="" />
							</div>
						</div>
						
						
						
										
						
						 
					</div>
	
					
					
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
					
							

					<div class="control-group">
							<label class="control-label">Item Description</label>
							<div class="controls">
								<input type="text" name="itemDesc" required="required" readonly="readonly"
			id="itemDesc" class="form-control" placeholder="" />
							</div>
						</div>
						
						
						
						
						 <div class="control-group">
							<label class="control-label">Rate</label>
								<input type="text" name="rate" id="rate" readonly="readonly"
							class="form-control" required="required" placeholder="" onblur="caluculateAmt()" />
						
						</div>
						
						
						
												</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						
						
						
							
									
									
						<div class="control-group">
							<label class="control-label">Quantity</label>
							<div class="controls">
								<input type="text" class="form-control"  required="required" name="qty" id="qty" placeholder=""  onblur="caluculateAmt()"/>
							</div>
						</div>
							
							
							
						<div class="control-group">
							<label class="control-label">Amount</label>
							<div class="controls">
							<input type="text" class="form-control" id="amt" name="amt" required="required" readonly="readonly"  placeholder="" />
							</div>
						</div>
							
							
								
				</div>
			</div>
		</div>
	 </form>
	 		<div class="panel panel-default" id="idresults">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">Sales Items </div>
							<div class="span1" align="right">
								<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Remove selected Operation">
								<i class="icon-trash"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;" id="salesItemIntryTable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
												<th>Sr No.</th>
								<th>Item Code</th>
								<th>Item Desc</th>
								<th>Unit</th>
								<th>Del Date</th>
								<th>Qty</th>
								<th>Rate</th>
								<th>Amount</th>
								<th>Action</th>
									
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty salesorderitemlst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${salesorderitemlst}">
             		           					<%
             		           					if(i%2==1){
             		           						%>
             		           							<tr class="" bgcolor="white">
             		           						<%}else{ %>
             		           							<tr class="" bgcolor="#dfe4e6">
             		           							<%
             		           							}
             		           					i++;
             		           					%>
             		           						
             		           						<td>${listValue.srno}</td>
             		           						<td>${listValue.itemCode}</td>
             		           						<td>${listValue.itemDesc}</td>
             		           						<td>${listValue.unit}</td>
             		           						<td>${listValue.dilDate}</td>
             		           						<td>${listValue.qty}</td>
             		           						<td>${listValue.rate}</td>
             		           						<td>${listValue.amt}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.itemCode}" type="checkbox"></td>
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
				
				</div>
	
	
	</div>
	
	
	
	
		<!-- 4 pannel -->
		
		  <div class="form-horizontal">
		<div class="panel panel-default">
			<!-- <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Invoice Detail</div>
						
					</div>
				</div>
			</div> -->

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Basic Total</label>
							<div class="controls">
								<input type="text"  name="bTotal" id="bTotal" class="form-control" placeholder="" readonly="readonly" />
							</div>
						</div> 
						 <div class="control-group" id="cstdiv">
							<label class="control-label">CST</label>
							<div class="controls">
									<input type="text" id="cstAmt" name="cstAmt" class="form-control" placeholder="" />
							</div>
						</div> 
						<div class="control-group" id="cstdiv">
							<label class="control-label">Final Amount</label>
							<div class="controls">
								<input type="text" class="form-control" placeholder="" id="netAmt" name="netAmt" onblur="converWordToRs()" />
							</div>
						</div> 
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group" id="excisediv">
							<label class="control-label">Excise 12.5%</label>
							<div class="controls">
								<input type="text" id="exciseAmt" name="exciseAmt"  class="form-control" value="0" placeholder="" />
							</div>
						</div>
						<div class="control-group" id="gstdiv">
							<label class="control-label">GST</label>
							<div class="controls">
								<input type="text" class="form-control" placeholder="" />
							</div>
						</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
						
						<div class="control-group" id="vatdiv">
							<label class="control-label">Vat 12.5%</label>
							<div class="controls">
								<input type="text" id="vatAmt" name="vatAmt"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group" id="servicetaxdiv">
							<label class="control-label">Service Tax</label>
							<div class="controls">
							<input type="text" id="serviceTaxAmt" name="serviceTaxAmt" class="form-control" placeholder="" />
							</div>
						</div>
											
					</div>
					
				</div>
				
			</div>
			
		</div>
		</div>
		
		
	</fieldset>



<script type="text/javascript">					


function getcustItemList()
{
	
	var custName=document.getElementById("custName").value;
	
	
			var List;
			jQuery.ajax({
		 	url: "getcustItemcodelist.html?custName="+custName,
			type: "POST",
			dataType: "json",
			async: false,
				success: function (data) {
					List = data
					
  					$('#itemCode').empty();
					   	$('#itemCode').append('<option value="">--Select--</option>');
 					 for (i in List ) {
		
   			 		  $('#itemCode').append('<option value="' + List[i].itemCode + '">' +List[i].itemCode + '</option>');
  				}
			 		}
	
				});
			
			
			
	
}


$(document).ready(function(){
	$('#itemCode').change(function(event){
		
		var custName=document.getElementById("custName").value;

		var code=document.getElementById("itemCode");
		var itemCode = code.options[code.selectedIndex].value;
		
  		$.getJSON('getJsonItemdesc.html',{itemCode:itemCode}).done(function(json ) {
  		
  			
  			document.getElementById("itemDesc").value=json[0].itemDesc;
  			getItemRate();
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});


function getItemRate(){
		
		var custName=document.getElementById("custName").value;

		var code=document.getElementById("itemCode");
		var itemCode = code.options[code.selectedIndex].value;
		
  		$.getJSON('getJsonItemrate.html',{itemCode:itemCode,custName:custName}).done(function(json ) {
  		
  		document.getElementById("rate").value=json[0].itemRate;
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
}



function savesalesOrderDetail() {
	
	if(checkFinalAmt())
		{
		// get the form values
	   	var custName = $('#custName').val();
	    var salesOrderNo = $('#salesOrderNo').val();
	    var poNo = $('#poNo').val();
	    var poDate = $('#poDate').val();
	    var bTotal = $('#bTotal').val();
	    var exciseAmt = $('#exciseAmt').val();
	    var vatAmt = $('#vatAmt').val();
	    var cstAmt = $('#cstAmt').val();
	    var serviceTaxAmt = $('#serviceTaxAmt').val();
	    var netAmt = $('#netAmt').val();
	    
	  
	    $.ajax({
	    type: "POST",
	    url: "savesalesOrderDetail.html",
	    data: "custName=" + custName + "&salesOrderNo=" + salesOrderNo+ "&poNo=" + poNo+ "&poDate=" + poDate+ "&bTotal=" +bTotal+ "&exciseAmt=" + exciseAmt+ "&vatAmt=" + vatAmt+ "&cstAmt=" + cstAmt+ "&serviceTaxAmt=" +serviceTaxAmt+ "&netAmt=" + netAmt,
	    success: function(response){
	    // we have the response
	    $('#info').html(response);
		location.href="customerPurchaseOrderInputRequest.html";
	 
	    },
	    error: function(e){
	    	alert("Creating New Sales Order")
	    	location.href="customerPurchaseOrderInputRequest.html";
	  
	    }
	    });
	    
		
		}
    
    }
    
    
    
$(function() {
    $( "#poDate" ).datepicker();
    $( "#poDate" ).datepicker("show");
    
    $( "#dilDate" ).datepicker();
    $( "#dilDate" ).datepicker("show");
   
 });



function calculateTotal() 
{ 
		var sum=0;
		var oTable = document.getElementById("salesItemIntryTable");
		 
		 var i;
		 
	     var rowLength = oTable.rows.length;
	     
	    
	    
		  for (i =1; i <rowLength; i++)
		  {
		      var oCells = oTable.rows.item(i).cells;
		      
		      sum=sum+parseFloat(oCells[7].firstChild.data);
		      
		     
		  }
		
		
		 document.getElementById("bTotal").value =sum;
		 getApplyeTaxOfCustomer();
		 
		
		
		  
}


function caluculateAmt() {
	var amt=parseFloat(document.getElementById("qty").value)*parseFloat(document.getElementById("rate").value);
	document.getElementById("amt").value=amt;
	
}



	
	
$(document).ready(function () {
    $('form#fname').submit(function() {
        var c = confirm("Please Make Sure Rate & Qty");
        return c;
    });
}); 



function hide() {

	 $("#gstdiv").hide();
	 $("#vatdiv").hide();
	 $("#cstdiv").hide();
	 $("#excisediv").hide();
	 $("#servicetaxdiv").hide();
	 
	
}









function checkFinalAmt()
{
       var c = confirm("Please Check Final Amt");
       return c;
} 



function deleteRowsChecked() {
	var check1 = 0;
	var table = document.getElementById("salesItemIntryTable");
	var pono=document.getElementById("poNo").value;

	for ( var rowi = table.rows.length; rowi--;) {
		var row = table.rows[rowi];
		var inputs = row.getElementsByTagName('input');
		for ( var inputi = inputs.length; inputi--;) {
			var input = inputs[inputi];
			if (input.type === 'checkbox' && input.checked) {
				check1 = 1;
			}
		}
	}

	if (check1 == 0) {
		$('#iderror').show();
		$('#idsuccess').hide();
	} else {
		var result = confirm("Are you sure you want to delete selected records?");
		if (result) {
			var table = document.getElementById("salesItemIntryTable");
			for ( var rowi = table.rows.length; rowi--;) {
				var row = table.rows[rowi];
				var inputs = row.getElementsByTagName('input');
				for ( var inputi = inputs.length; inputi--;) {
					var input = inputs[inputi];
					if (input.type === 'checkbox' && input.checked) {
						var itemcode = input.value;
						alert(itemcode);
						 $.ajax({
							url : "deletesalesItems.html",
							type : "GET",
						    data: "pono=" + pono + "&itemcode=" + itemcode+ "&itemcode=" + itemcode,
							

							success : function(data) {
								var obj = JSON.parse(data.status);
							}
						}); 
						row.parentNode.removeChild(row);
					}
				}
			}
			$('#idsuccess').show();
			$('#iderror').hide();
		}
	}
}


</script>