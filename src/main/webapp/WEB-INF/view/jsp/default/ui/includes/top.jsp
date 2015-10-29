<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<!DOCTYPE html>

<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <title>CAS &#8211; Central Authentication Service</title>
  
  <spring:theme code="standard.custom.css.file" var="customCssFile" />
  <link rel="stylesheet" href="<c:url value="${customCssFile}" />" />
  <link rel="icon" href="<c:url value="/favicon.ico" />" type="image/x-icon" />
  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Seaweed+Script">

  <style>
	.bg-img{
		background: url('images/Photo7-min.jpg') no-repeat;
		background-size: cover;
	}
	header{
		background: rgba(250, 203, 59, 0.85) none repeat scroll 0 0 !important;
		box-shadow: 0 -1px 0 0 rgba(255, 255, 255, 0.2) inset !important;
		background: #facb3b none repeat scroll 0 0;
		height: 97px;
	}
	.journey-msg{
		line-height: 1.1;
		margin: 20px 0 50px;
		width: 60%;
	}
	.journey-msg h1{
		color: #ffffff;
		font-family: "Seaweed Script",cursive;
		font-size: 60px;
		font-weight: 300;
	}
	.logo{
		float: left;
		padding-left: 50px;
		width: 100px;
	}
	.https-msg{
		background-color: transparent;
		border: none;
		float: left;
		margin-left: 111px;
	}
	#content{
		background-color: transparent;
		float: left;
	}
	#fm1{
		background-color: #333333 !important;
	}
	#login-form input[type="text"], 
	#login-form input[type="password"] {
	  background-color: #e9e9e9;
	  border: 1px solid #444;
	  border-radius: 4px;
	  color: #a6a6a5;
	  font-size: 18px;
	  font-weight: 100;
	  padding: 16px 10%;
	  width: 80%;
	}
  </style>
  
  <!--[if lt IE 9]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.1/html5shiv.js" type="text/javascript"></script>
  <![endif]-->
  
</head>
<body id="cas" class="bg-img">
	  <header>
		<div class="logo">
			<a href="http://cev3.pramati.com/"><img class="logo_transparent" alt="Corridor" src="images/logo_corridor.png"></a>
		</div>
		<c:if test="${not pageContext.request.secure}">
		  <div id="msg" class="errors https-msg" style="background-color: transparent !important; border: none !important;">
			<h2>Non-secure Connection</h2>
			<p>You are currently accessing CAS over a non-secure connection.  Single Sign On WILL NOT WORK.  In order to have single sign on work, you MUST log in over HTTPS.</p>
		  </div>
		</c:if>
		
	  </header>
  <div id="container">
      <!--<header>
        <a id="logo" href="http://www.jasig.org" title="<spring:message code="logo.title" />">Jasig</a>
        <h1>Central Authentication Service (CAS)</h1>
      </header>-->
      <div id="content">
