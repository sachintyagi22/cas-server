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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

      </div> <!-- END #content -->
      

    </div> <!-- END #container -->
    
      <footer>
        <!--<div id="copyright">
          <p><spring:message code="copyright" /></p>
          <p>Powered by <a href="http://www.jasig.org/cas">Jasig Central Authentication Service <%=org.jasig.cas.CasVersion.getVersion()%></a></p>
        </div>-->
		<div class="footer-container">
			<div class="footer-section" style="float:left;">
				<!--<p class="footer-section-title">Corridor</p>
				<p class="footer-content">Helping foster innovation by investing in people and ideas. Combining technology expertise with entrepreneurial skills to help build creative solutions.</p>-->
				<p class="footer-content">Copyright&nbsp;&copy;&nbsp;2015</p>
			</div>
			<div class="footer-section" style="float:right;">
				<!--<p class="footer-section-title">Need Help?</p>
				<p class="footer-address"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;Midtown, Banjara Hills, Hyderabad</p>
				<p class="footer-address"><i class="fa fa-phone"></i>&nbsp;&nbsp;&nbsp;+91-40-3355 2000</p>
				<p class="footer-address"><i class="fa fa-envelope"></i>&nbsp;&nbsp;&nbsp;info@pramati.com</p>
				<p class="footer-address"><i class="fa fa-globe"></i>&nbsp;&nbsp;&nbsp;www.pramati.com</p>-->
			</div>
		</div>
      </footer>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    
    <%-- 
        JavaScript Debug: A simple wrapper for console.log 
        See this link for more info: http://benalman.com/projects/javascript-debug-console-log/
    --%>
    <script type="text/javascript" src="https://github.com/cowboy/javascript-debug/raw/master/ba-debug.min.js"></script>
    
    <spring:theme code="cas.javascript.file" var="casJavascriptFile" text="" />
    <script type="text/javascript" src="<c:url value="${casJavascriptFile}" />"></script>
  </body>
</html>

