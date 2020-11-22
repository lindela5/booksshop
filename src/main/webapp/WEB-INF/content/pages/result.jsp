<%--<%@ page contentType="text/html; charset=UTF-8" %>--%>
<%--<%@ taglib prefix="s" uri="/struts-tags" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Hello World</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<p> Hello Baeldung User </p>--%>
<%--<p>You are a <s:property value="carMessage"/></p>--%>
<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<h3>
    Hello <s:property value="handle"/> !!!
</h3>

<%--<s:iterator value="book" var="ex">--%>
<%--    <div id="card" class="card" style="width: 18rem; float: left; height: 20rem;">--%>
<%--        <img src="..." class="card-img-top" alt="...">--%>
<%--        <div class="card-body">--%>
<%--            <h5 class="card-title"><s:property value="bookTitle"/></h5>--%>
<%--            <s:property value="yearOfIssue"/>--%>
<%--            </br>--%>
<%--            <p> Price: <s:property value="price"/>$</p>--%>
<%--            </br>--%>

<%--                &lt;%&ndash;                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>&ndash;%&gt;--%>
<%--            <a href="#" class="btn btn-primary">Add to cart</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</s:iterator>--%>