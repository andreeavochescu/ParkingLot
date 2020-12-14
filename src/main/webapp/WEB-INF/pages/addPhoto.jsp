<%-- 
    Document   : addPhoto
    Created on : Dec 11, 2020, 5:24:09 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Add Photo">
    <h1>Add Photo</h1>
    <form class="needs-validation" novalidate method="POST" enctype="multipart/form-data"
          action="${pageContext.request.contextPath}/Cars/AddPhoto">
        <div class="row">
            <div class="col-md-6 mb-3">
                License plate: ${car.licensePlate}
            </div>    
        </div>    
            <div class="row"> 
                <div class="col-md-6 mb-3">
                    <label for="file">Photo</label>
                    <input type="file" name="file" required>
                    <div class="invalid-feedback">
                        Photo is required.
                    </div>    
                </div>    
            </div>    
            <input type="hidden" name="car_id" value="${car.id}" />
            <button class="btn btn-primary btn-lg btn-block" type="submit">Save</button>
    </form>            
</t:pageTemplate>
