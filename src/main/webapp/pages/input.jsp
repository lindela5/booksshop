<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"--%>
<%--         pageEncoding="ISO-8859-1"%>--%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">--%>
<%--    <title>Baledung Struts</title>--%>
<%--</head>--%>
<%--<body>--%>

<%@ page language="java" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/js/book.js"></script>

<%--<link rel='stylesheet' href='/css/bootstrap.min.css'>--%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Struts Rais</title>
    <sj:head/>
</head>
<body>



<div class="btn-group" role="group" aria-label="Basic example" style="width : 100%;">
    <s:iterator value="section" var="ex">


<%--            <s:property value="nameSection"/>--%>

            <s:url var="ajaxLink" value="/bookSection.action">
                    <s:param name="sectionId"><s:property value="id"/></s:param>
            </s:url>
            <sj:a  href="%{ajaxLink}" targets="ajax-results">
                <button type="submit" class="btn btn-secondary" onclick="myFunction()">
                <s:property value="nameSection"/>
                </button>
            </sj:a>


        <%--        <s:property value="id"/>--%>
        <%--        <s:action name="books" namespace="/" executeResult="false"></s:action>--%>

        <%--      <s:bean name="com.mkyong.common.Person" var="bookBean">--%>
        <%--        <s:param name="id" value="%{section.id}"/>--%>
        <%--        </s:bean>--%>

    </s:iterator>
</div>


<%--<s:url var="ajaxLink" value="/bookSection.action">--%>
<%--    <s:param name="handle"> %{id} </s:param>--%>
<%--</s:url>--%>
<%--<sj:a id="link1" href="%{ajaxLink}" targets="ajax-results">--%>
<%--                    Say Hello to @cameronmcnz--%>
<%--&lt;%&ndash;    <s:property value="nameSection"/>&ndash;%&gt;--%>
<%--</sj:a>--%>



<div id="ajax-results">
    <h5>JQuery Struts Ajax result will go here</h5>
</div>





<%--<form method="get" action="/car.action">--%>
<%--    <p>Welcome to Baeldung Struts 2 app</p>--%>
<%--    <p>Which car do you like !!</p>--%>
<%--    <p>Please choose ferrari or bmw</p>--%>
<%--    <select name="carName">--%>
<%--        <option value="Ferrari" label="ferrari" />--%>
<%--        <option value="BMW" label="bmw" />--%>
<%--    </select> <input type="submit" value="Enter!" />--%>

<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
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
