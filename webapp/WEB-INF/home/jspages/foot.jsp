<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>OA协同管理系统底部</title>
	
	<%@include file="common/hbootstrap.jsp" %>
</head>

<body>
	
	<h2>Simple tabs adding and removing.</h2>

    <p><button id="add_tab" class="btn btn-primary">Add Tab</button></p>

    <div id="tabsDiv">
        <ul class="ui-tabs-nav">
            <li><a href="#tabs-1">Nunc tincidunt</a></li>
        </ul>
        <div id="tabs-1">
            <p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin .</p>
        </div>
    </div>
	<%@include file="common/tbootstrap.jsp" %>
	
	<script type="text/javascript">
		var tabTemplate = "<li><a href='\#{href}'>\#{label}</a> <span class='ui-icon ui-icon-close'>Remove Tab</span></li>";
		var tabs = $('#tabsDiv').tabs();
	
		$(function(){
			$('#add_tab').click(function(){
				addTab({label:'MyLabel', id:'9'});
			});
		});
		
		addTab = function(options) {
			var label = options.label + "Tab";
            var id = "tabs-" + options.id;
            var li = $(tabTemplate.replace( /#\{href\}/g, "#" + id ).replace( /#\{label\}/g, label ));
            var tabContentHtml = '<iframe src="head"></iframe>';

	        tabs.find( ".ui-tabs-nav" ).append( li );
	        tabs.append( "<div id='" + id + "'>" + tabContentHtml + "</div>" );
	        tabs.tabs( "refresh" );
		}
	</script>
</body>
</html>