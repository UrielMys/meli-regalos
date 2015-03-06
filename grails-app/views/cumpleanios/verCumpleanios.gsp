<%@ page import="meli.regalos.Empleado"%>
<%@ page import="helpers.InterpretadorFechas" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="formatoAplicacion">
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
</head>

<body>
	<div id="list-empleado" class="content scaffold-list" role="main">
		<table>
			<thead>
				<tr>
					<g:sortableColumn property="nombre"
						title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
					<g:sortableColumn property="apellido"
						title="${message(code: 'empleado.apellido.label', default: 'Apellido')}" />
					<g:sortableColumn property="regalos"
						title="${message(code: 'empleado.regalos.label', default: 'Regalo')}" />
				</tr>
			</thead>
			<tbody>
				<g:each in="${empleadoList}" status="i" var="regalo">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>
							${regalo.empleado.nombre}
						</td>
						<td>
							${regalo.empleado.apellido}
						</td>
						<td>
							${regalo.url}
						</td>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${empleadoInstanceCount ?: 0}" />
		</div>
		<g:link controller="cumpleanios" params="[fecha: InterpretadorFechas.interpretar(fecha.previous())]"
			action="verCumpleanios">Anterior</g:link>
		<g:link controller="cumpleanios" params="[fecha: InterpretadorFechas.interpretar(fecha.next())]"
			action="verCumpleanios">Siguiente</g:link>
	</div>
</body>
</html>