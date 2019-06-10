<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:importAttribute name="links" />
<tiles:importAttribute name="scripts" />
<tiles:importAttribute name="alias" />

<!DOCTYPE html>
<html lang="<spring:message code="lang" />">
<head>
<meta charset="UTF-8" />
<title><spring:message code="${alias }.title" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="Keywords" content="<spring:message code="${alias }.keys" />" />
<meta name="Description" content="<spring:message code="${alias }.desc" />" />
<link rel="stylesheet" href="/resources/css/<spring:message code="lang" />.css" />
<c:forEach var="link" items="${links }">
	<link rel="stylesheet" href="<c:url value="${link }" />" type="text/css" />
</c:forEach>
<c:forEach var="script" items="${scripts }">
	<script src="<c:url value="${script }" />"></script>
</c:forEach>
</head>
<body>
<div id="wrap">

	<div id="header">
		<tiles:insertAttribute name="header" />
	</div>
	
	<div id="main-menu" lang="en">
		<tiles:insertAttribute name="main-menu" />
	</div>
	
	<div id="container">
		<div id="content">
			<tiles:insertAttribute name="content" />
		</div>
	</div>
	
	<div id="sidebar" lang="en">
		<tiles:insertAttribute name="sidebar" />
	</div>
	
	<div id="extra">
		<tiles:insertAttribute name="extra" />
	</div>
	
	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>

</div>
</body>
</html>