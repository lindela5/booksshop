<%@ page language="java" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<%--<link rel='stylesheet' href='/css/bootstrap.min.css'>--%>


<html>
<head>
    <link rel="stylesheet" type="text/css" href="/pages/css/input.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Struts Rais</title>
    <script src="/pages/js/book.js"></script>

<%--    <sj:head/>--%>
</head>
<body>


<img src="/pages/download.jpeg" class="img-fluid" alt="Responsive image">



<%--<div class="btn-group" role="group" aria-label="Basic example">--%>
<%--    <s:iterator value="section" var="ex">--%>


<%--&lt;%&ndash;            <s:property value="nameSection"/>&ndash;%&gt;--%>

<%--            <s:url var="ajaxLink" value="/bookSection.action">--%>
<%--                    <s:param name="sectionId"><s:property value="id"/></s:param>--%>
<%--            </s:url>--%>
<%--            <sj:a  href="%{ajaxLink}" targets="ajax-results">--%>
<%--                <button type="submit" class="btn btn-secondary" onclick="myFunction()">--%>
<%--                <s:property value="nameSection"/>--%>
<%--                </button>--%>
<%--            </sj:a>--%>

<%--    </s:iterator>--%>
<%--</div>--%>

<%--<div id="ajax-results">--%>
<%--    <h5>JQuery Struts Ajax result will go here</h5>--%>
<%--</div>--%>




<div class="btn-group" role="group" aria-label="Basic example">
    <s:iterator value="section" var="ex">
<%--        <s:param name="sectionId"><s:property value="id"/></s:param>--%>

                <button type="submit" class="btn btn-secondary" onclick="myFunction()">
                    <input type="hidden" name="section" value=" <s:property value="id"/>">
                <s:property value="nameSection"/>
                </button>

    </s:iterator>
</div>


<%--<div class="btn-group" role="group" aria-label="Basic example">--%>

<%--    <c:forEach items="${list}" var="section">--%>
<%--        <button type="submit" class="btn btn-secondary" onclick="myFunction()">--%>

<%--                ${list.nameSection}--%>
<%--        </button>--%>
<%--    </c:forEach>--%>

<%--</div>--%>



<div id="results">
    <h5>JQuery Struts Ajax result will go here</h5>
    <s:iterator value="book" var="ex">
        <div id="card" class="card" style="width: 18rem; float: left; height: 20rem;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title"><s:property value="bookTitle"/></h5>
                <s:property value="yearOfIssue"/>
                </br>
                <p> Price: <s:property value="price"/>$</p>
                </br>

                    <%--                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>--%>
                <a href="#" class="btn btn-primary">Add to cart</a>
            </div>
        </div>
    </s:iterator>

</div>


</body>
<!-- Footer -->
<!-- Footer -->
<footer class="page-footer font-small cyan darken-3">

    <!-- Footer Elements -->
    <div class="container">

        <!-- Grid row-->
        <div class="row">

            <!-- Grid column -->
            <div class="col-md-12 py-5">
                <div class="mb-5 flex-center">

                    <!-- Facebook -->
                    <a class="fb-ic">
                        <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!-- Twitter -->
                    <a class="tw-ic">
                        <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!-- Google +-->
                    <a class="gplus-ic">
                        <i class="fab fa-google-plus-g fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!--Linkedin -->
                    <a class="li-ic">
                        <i class="fab fa-linkedin-in fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!--Instagram-->
                    <a class="ins-ic">
                        <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!--Pinterest-->
                    <a class="pin-ic">
                        <i class="fab fa-pinterest fa-lg white-text fa-2x"> </i>
                    </a>
                </div>
            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row-->

    </div>
    <!-- Footer Elements -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2020 Copyright:
        <a href="https://mdbootstrap.com/"> MDBootstrap.com</a>
    </div>
    <!-- Copyright -->

</footer>
<!-- Footer -->


</html>
