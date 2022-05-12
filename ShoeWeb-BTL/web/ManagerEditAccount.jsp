<%-- 
    Document   : ManagerAddAccount.jsp
    Created on : May 11, 2022, 11:12:56 AM
    Author     : khanh
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
	      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="css/managerAcount.css"/>
    </head>
    <body onload="myFunction()">
	<div class="container">

	    <!--Nút thêm mới user-->
	    <div class="form-body">
		<div class="row">
		    <div class="form-holder">
			<div class="form-content">
			    <div class="form-items">
				<c:if test="${action == edit}">
				    <h3>Update Account</h3>
				</c:if>
				<c:if test="${action == add}">
				    <h3>Create Account</h3>
				</c:if>

				<p>Fill in the data below.</p>
				<form  class="requires-validation" action="SaveAccount" method="POST" novalidate>
				    <input type="hidden" name="action" value="${action}" />
				    <input type="hidden" name="id" value="${id}" />
				    <div class="col-md-12">
					<input class="form-control" type="text" name="userName" value = "${userName}"
					       placeholder="Enter user name" required />
					<div class="valid-feedback">User Name field is valid!</div>
					<div class="invalid-feedback">User Name field cannot be blank!</div>
				    </div>

				    <div class="col-md-12">
					<input class="form-control" type="password" name="password" value="${password}"
					       placeholder="Enter password" required />
					<div class="valid-feedback">Password field is valid!</div>
					<div class="invalid-feedback">Password field cannot be blank!</div>
				    </div>

				    <div class="col-md-12">
					<p>Is Admin:</p>
					<div>
					    <!-- Default inline 1-->
					    <div class="custom-control custom-radio custom-control-inline">
						<input type="radio" class="custom-control-input" id="defaultInline1" name="isAdmin" value="1">
						<label class="custom-control-label" for="defaultInline1">True</label>
					    </div>

					    <!-- Default inline 2-->
					    <div class="custom-control custom-radio custom-control-inline">
						<input type="radio" class="custom-control-input" id="defaultInline2" name="isAdmin" value="0">
						<label class="custom-control-label" for="defaultInline2">False</label>
					    </div>
					</div>

				    </div>
				    <div class="col-md-12">
					<p>Is Seller: </p>
					<div>
					    <!-- Default inline 1-->
					    <div class="custom-control custom-radio custom-control-inline">
						<input type="radio" class="custom-control-input" id="defaultInline3" name="isSell" value="1">
						<label class="custom-control-label" for="defaultInline3">True</label>
					    </div>

					    <!-- Default inline 2-->
					    <div class="custom-control custom-radio custom-control-inline">
						<input type="radio" class="custom-control-input" id="defaultInline4" name="isSell" value="0">
						<label class="custom-control-label" for="defaultInline4">False</label>
					    </div>
					</div>

				    </div>
				    <div class="form-button mt-3">
					<button id="submit" type="submit" class="btn btn-primary">Submit</button>
					<a style="float: right" href="ManagerAccount" class="btn btn-primary">Back to user list</a>
				    </div>

				</form>
			    </div>
			</div>
		    </div>
		</div>
	    </div>
	</div>
	<script>
	    function myFunction() {
		var selectedAdmin = "${isAdmin}";
		$("input[name=isAdmin][value=" + selectedAdmin + "]").prop('checked', true);
		var selectedSell = "${isSell}";
		$("input[name=isSell][value=" + selectedSell + "]").prop('checked', true);
	    }
	</script>
    </body>

</html>
