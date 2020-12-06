<%@ page language="java" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



<%--!The second implementation--%>
<s:iterator value="bookSection" var="ex">
    <div id="card" class="card" style="width: 18rem; float: left; height: 20rem;">
        <img src="${books[index].picture}" class="card-img-top">
        <div class="card-body">
            <h5 class="card-title"><s:property value="bookTitle"/></h5>
            <s:property value="yearOfIssue"/>
            </br>
            <p> Price: <s:property value="price"/>$</p>
            </br>

            <a href="#" class="btn btn-primary">Add to cart</a>
        </div>
    </div>
</s:iterator>










