<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

  <head>
  <link rel="stylesheet" href="./resources/Tiles_Resources/css/common.css">	
  <!-- NAV영역   -->
  
  	  
  </head>
  
  <body>
  	<div class='wrap'>
  		<tiles:insertAttribute name="header" />
		  <div class='content' >  	
  			<tiles:insertAttribute name="left" />
	  		<div class="page_content">
	  		<tiles:insertAttribute name="body" />
	  		</div>
  		</div>
  		<tiles:insertAttribute name="foot" />
  	</div>
  </body>
  
