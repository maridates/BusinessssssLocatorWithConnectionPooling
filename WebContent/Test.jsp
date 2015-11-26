<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:query var="rs" dataSource="jdbc/businesslocator">
select street, zip, district from address
</sql:query>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Locator with Connection Pooling</title>
</head>
<body>
<h2>Results</h2>

<c:forEach var="row" items="${rs.rows}">
    street ${row.street}<br/>
    zip ${row.zip}<br/>
    district ${row.district}<br/>
</c:forEach>
</body>
</html>