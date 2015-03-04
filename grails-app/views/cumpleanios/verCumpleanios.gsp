	<!Doctype html>
<html>
<head>
	<meta name="layout" content="main">
	<link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'bootstrap.css') }" />
	<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
	<script src="${resource(dir:'js',file:'bootstrap.min.js') }"></script>
</head>

<body>
	<g:each in="${empleadoList}" var="empleado">
		<div style="border: 1px">
			<h3>${empleado.nombre}</h3>
			<h4>${empleado.regalos}</h4>
		</div>
	</g:each>
	<g:hiddenField name="fechaSiguiente" value="${}"/>
	<g:submitButton name="Anterior"/>
	<g:submitButton name="Situiente" action="verCumpleanios"/>
</body>
</html>