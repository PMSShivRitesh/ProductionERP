<fieldset class="fieldset-style">

<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>Records added successfully!
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>
		
<form action="addSupplierContactPersions.html" method="post">
<input type="hidden" name="suppId" id="suppId" value="${suppId}">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Add Supplier Contact People</div>
						<div class="span3" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" title="Save Filled Data" />
							<div class="btn" title="Delete Selected Record" onclick="deleteRowsChecked()" id="btnclear">
								<i class="icon-trash"></i>
							</div>
							
							<div class="btn" title="Go To Supplier Documents Add" onclick="callNextPage()" id="btnclear">
								<i class="icon-forward"></i>
							</div>
							
							<div class="btn" title="Go To Supplier Home" onclick="gethomepage();" id="btnclear">
								<i class="icon-home"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
					<div class="control-group">
							<label class="control-label">Persion Name</label>
							<div class="controls">
								<input type="text" class="form-control" name="contactPersionName" id="contactPersionName" placeholder="" onblur="checksuppcontackpersionexist()" />
							</div>
						</div>
					 
					 
					  <div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="text" class="form-control" name="email" placeholder="" />
							</div>
						</div>
						<!--<div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="email" class="form-control" name="custEmail" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							 <label class="control-label">GST Apply</label>
							<div class="controls">
								<input type="checkbox" name="custGst" value="YES"> 
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Excise Apply</label>
							<div class="controls">
								<input type="checkbox" name="custExcise" value="YES"> 
							</div>
						</div> -->
						<!--<div class="control-group">
							<label class="control-label">Raw Material Rate</label>
							<div class="controls">
								<input type="text" class="form-control" id="supplierRate" name="supplierRate" readonly="readonly" placeholder="" />
							</div>
						</div>
						 -->
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						 <div class="control-group">
							<label class="control-label">Mobile</label>
							<div class="controls">
								<input type="text" class="form-control" name="phoneno" placeholder="" />
							</div>
						</div>

						 
						
						<%--<div class="control-group">
							<label class="control-label">Select District</label>
							<div class="controls">
								<select class="form-control" name="districtName" id="districtName" onchange="getTalukaLst()">
											<option></option>
										</select>
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Zip Code</label>
							<div class="controls">
								<input type="text" class="form-control" name="custZipCode" placeholder="" required="required"/>
							</div>
						</div>
						
							<div class="control-group">
							<label class="control-label">Landline No.</label>
							<div class="controls">
								<input type="text" class="form-control"  name="custConatactNo" placeholder="" />
							</div>
						</div> 
						
						<div class="control-group">
							<label class="control-label">VAT</label>
							<div class="controls">
								<input type="checkbox" name="custVat" value="YES"> 
							</div>
						</div> 
						
						<div class="control-group">
							<label class="control-label">Service Tax Apply</label>
							<div class="controls">
								<input type="checkbox" value="YES" name="custServiceTax">  
							</div>
						</div> 
 --%>						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Designation</label>
							<div class="controls">
									<input type="text" class="form-control" name="designation" placeholder="" />
							</div>
						</div>
						
						<!--  <div class="control-group">
							<label class="control-label">Select State</label>
							<div class="controls">
								<select class="form-control" name="stateName" id="stateName" onchange="getDistrictLst()">
											<option></option>
											</select>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Taluka</label>
							<div class="controls">
									<select class="form-control" name="talukaName" id="talukaName">
											<option></option>
										</select>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Website URL</label>
							<div class="controls">
								<input type="text" class="form-control" name="custWebsite" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"></label>
							<div class="controls">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"></label>
							<div class="controls">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"></label>
							<div class="controls">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">CST Apply</label>
							<div class="controls">
								<input type="checkbox" name="custCst" value="YES" >
							</div>
						</div> -->
						
											
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
						<div class="span11" align="left"><!-- Project Task List --></div>
						<div class="span1" align="right">
							<!-- <div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Delete selected">
								<i class="icon-trash"></i>
							</div> -->
						</div>
					</div>
				</div>
			</div>

			<div class="panel-body">
			
				<div class="singleline-records">
					<table id="idtable" class="table table-bordered insideform">
						<thead style="font-size: 12px;">
						<tr bgcolor="#84939f">
							<th>Sr No</th>
											<th>Persion Name</th>
											<th>Designation</th>
											<th>Mobile</th>
											<th>Email</th>
											<th>Action</th>
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty suppconatctlst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${suppconatctlst}">
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
             		           					<td><%=i %></td>
             		           						<td>${listValue.contactPersionName}</td>
             		           						<td>${listValue.designation}</td>
             		           						<td>${listValue.phoneno}</td>
             		           						<td>${listValue.email}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.suppConatactId}" type="checkbox">
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
	
	</fieldset>
	
	
	

<script>




function checksuppcontackpersionexist() {
    // get the form values
   
   var suppId = $('#suppId').val();
	var contactPersionName=$('#contactPersionName').val();
    $.ajax({
    type: "POST",
    url: "checksuppcontactpersionexist.html",
    data: "suppId=" + suppId + "&contactPersionName=" + contactPersionName,
    success: function(data){

    	if(data=='"1"'){
    		 $('#idsuccess').hide();
			}
    else
    	{
    		 $('#contactPersionName').val('');
    	   $('#idsuccess').show();
    	
    	
    //$("#idsuccess").show();
    $("#idsuccess").html("<button type='button' class='close' data-dismiss='alert' onclick='hide();'>&times;</button><i class='icon-thumbs-up'></i>"+
    		data);
    
   
    
    	}
 
    },
    error: function(e){
    alert('Error: ' + e);
    }
    });
    }
    
    
function callNextPage()
{
	var suppId=document.getElementById("suppId").value;
	location.href="addSuppDocuments.html?suppId="+suppId
}



function  gethomepage()
{
	  location.href="getSystems.html?moduleName=Supplier";
}




function deleteRowsChecked() {
	var check1 = 0;
	var table = document.getElementById("idtable");

	
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
			var table = document.getElementById("idtable");
			for ( var rowi = table.rows.length; rowi--;) {
				var row = table.rows[rowi];
				var inputs = row.getElementsByTagName('input');
				for ( var inputi = inputs.length; inputi--;) {
					var input = inputs[inputi];
					if (input.type === 'checkbox' && input.checked) {
						var suppConatactId = input.value;
					
						 $.ajax({
							url : "deletesuppcontactpersion.html",
							type : "GET",
						    data: "suppConatactId=" + suppConatactId,
							

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
