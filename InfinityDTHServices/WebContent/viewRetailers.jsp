<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<t:layout title="View Retailer">
 
 	<jsp:attribute name="head">
		<!-- Add HTML content to page header here i.e. StyleSheets -->
		
	</jsp:attribute>
	 
	<jsp:attribute name="body">
	<!-- START -->
	
		<header>
			<div class="page-header">
		  		<h1>View Retailer<small> Retailer Management</small></h1>
			</div>	
		</header>
		
		<div class="row">
			<table class="table table-bordered" >
			   <thead class="thead-default">
			      <tr>
			         <th>Name</th>
			         <th>Contact No</th>
			         <th>Action</th>
			      </tr>
			   </thead>
			   <c:forEach items="${Retailers}" var="Retailer">
			      <tbody>
			         <tr>
			            <td>
			               <span class="badge">${Retailer.name}</span>
			            </td>
			            <td>
			               <span class="badge">${Retailer.contactNo1}</span>
			            </td>
			            <td>
			               <a class="btn btn-sm btn-primary" href="retailer?action=update&id=${Retailer.userId}" role="button">Update</a>
			               <a class="btn btn-sm btn-danger" href="retailer?action=delete&id=${Retailer.userId}" role="button">Delete</a>
			            </td>
			         </tr>
			      </tbody>
			   </c:forEach>
			</table>
      </div>
			
	<!-- END -->
	</jsp:attribute>
 
</t:layout>