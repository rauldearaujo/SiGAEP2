<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@include file="../css_include.jsp"%>
<title>SIGAEP - ${usuario.nome}</title>
</head>
<body>
	<%@include file="nav_bar_gerente.jsp"%>
	<div class="container">
		<div class="row center col s12">
			<div class="icon-block">
				<h2 class="center green-text">
					<i class="large material-icons">school</i>
				</h2>
				<h5 class="center">Cadastra novo Curso</h5>
			</div>
		</div>

		<form method="post" action="cadastrarCurso" class="col s12">
			<div class="row">
				<div class="input-field col s12">
					<input id="nome" type="text" class="validate" name="nome">
					<label for="nome">Nome</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12">
					<textarea id="textarea1" name="descricao" class="materialize-textarea"></textarea>
					<label for="textarea1">Descrição</label>
				</div>
			</div>
			<input type="hidden" name="icone" value="school">
			<div class="row center">
				<div class="input-field col s12">
					<button class="btn waves-effect waves-light green" name="action"
						type="submit">Cadastrar</button>
				</div>
			</div>
		</form>

	</div>

	<%@include file="../scripts_include.jsp"%>
	<script type="text/javascript">
    $(document).ready(function() {
      $('select').material_select();
    });
    </script>
</body>


</html>