<%-- 
    Document   : cars
    Created on : Nov 5, 2020, 8:14:24 PM
    Author     : Lenovo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>
    <div class="row">
        <div class="col-md-4">
            Car1
        </div>
        <div class="col-md-4">
            Spot1
        </div>
        <div class="col-md-4">
            User1
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            Car2
        </div>
        <div class="col-md-4">
            Spot2
        </div>
        <div class="col-md-4">
            User2
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            Car3
        </div>
        <div class="col-md-4">
            Spot3
        </div>
        <div class="col-md-4">
            User3
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            Car4
        </div>
        <div class="col-md-4">
            Spot4
        </div>
        <div class="col-md-4">
            User4
        </div>
    </div>
    
   <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>  
</t:pageTemplate>