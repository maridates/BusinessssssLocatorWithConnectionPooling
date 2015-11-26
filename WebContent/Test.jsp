<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:query var="rs" dataSource="businesslocator">
SELECT company_address_id, ca_company_id, ca_address_id FROM company_address WHERE ca_address_id = "111" 
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
    company_address_id ${row.company_address_id}<br/>
    ca_company_id ${row.ca_company_id}<br/>
    ca_address_id ${row.ca_address_id}<br/>
</c:forEach>
</body>
</html>