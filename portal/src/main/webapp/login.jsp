<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	  <title><%= GlobalProperties.getTitle() %>::OpenID Login</title>

	  <!-- Simple OpenID Selector -->
	  <link type="text/css" rel="stylesheet" href="css/openid.css?<%=GlobalProperties.getAppVersion()%>" />
	  <script type="text/javascript" src="js/lib/jquery-1.4.2.min.js?<%=GlobalProperties.getAppVersion()%>"></script>
          <!-- remove reference to openif javascript  -->
	<!--  <script type="text/javascript" src="js/lib/openid-jquery.js?<%=GlobalProperties.getAppVersion()%>"></script> -->
	  <script type="text/javascript">
	      $(document).ready(function() {
				  openid.init('openid_identifier');
				  //openid.setDemoMode(false); // if true, Stops form submission for client javascript-only test purposes
		  });
      </script>
</head>

<%
    String siteTitle = GlobalProperties.getTitle();
%>

<%@ page import="org.mskcc.cbio.portal.servlet.QueryBuilder" %>
<%@ page import="org.mskcc.cbio.portal.util.GlobalProperties" %>

<% request.setAttribute(QueryBuilder.HTML_TITLE, siteTitle+"::Login/Logout"); %>
<jsp:include page="WEB-INF/jsp/global/login_header.jsp" flush="true" />

<%
    String login_error = request.getParameter("login_error");
    String logout_success = request.getParameter("logout_success");
%>

    <% if (logout_success != null) { %>
        <div class="ui-state-highlight ui-corner-all" style="padding: 0 .7em;width:90%;margin-top:50px">
            <p><span class="ui-icon ui-icon-info" style="float: left; margin-right: .3em;"></span>
            <strong>You are now signed out.</strong></p>
        </div>
    <% } %>
    <% if (login_error != null) { %>
        <div class="ui-state-highlight ui-corner-all" style="padding: 0 .7em;width:90%;margin-top:50px">
            <p><span class="ui-icon ui-icon-info" style="float: left; margin-right: .3em;"></span>
            <strong>You are not authorized to access this resource.</strong></p>
        </div>
    <% } %>
       <br>
           <p>Please select an authentication provider:</p>
       <table cellspacing="2px" width="100%">
           <tr>
               <td>
                 <fieldset>
	             <legend>
                     Login to Portal:
                 </legend>
                 <p>
                     <span style="font-size:145%">
                     <%= GlobalProperties.getAuthorizationMessage() %>
                     </span>
                 </p>
  
               </td>
           </tr>
	     <tr>
	       <td>
                   <button type="button"><a href="auth/google"><IMG alt="Google+" src="images/login/images.large/google.gif" /></a></button>
	         
	       </td>
	     </tr>
       </table>
</td>
</tr>
<tr>
  <td colspan="3">
	<jsp:include page="WEB-INF/jsp/global/footer.jsp" flush="true" />
  </td>
</tr>
</table>
</center>
</div>
<jsp:include page="WEB-INF/jsp/global/xdebug.jsp" flush="true" />
</body>
</html>
