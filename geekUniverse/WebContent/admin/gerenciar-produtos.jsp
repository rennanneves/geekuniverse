 <%@ include file="top.jsp" %>
 <title>Gerencia de Produtos</title>
	<section class="container">
		<div class="jumbotron jumbotron-fluid">
				<div class="row">
					<div class=" col-md-12  col-sm-12 col-xs-12  col-lg-12">
					<c:choose>
							<c:when test="${param.produto == 'sucesso' }">
								<div class="alert alert-success alert-dismissible" role="alert">
									  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									  <strong>Sucesso!</strong> ${msgStatus}
								</div>
							</c:when>
							<c:when test="${param.produto == 'erro' }">
								<div class="alert alert-danger alert-dismissible" role="alert">
									  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									  <strong>Erro!</strong>${msgStatus}
								</div>
							</c:when>
						</c:choose>
						<legend>
							<center>Gerenciar Produtos</center>
						</legend>
						<a href="cadastrar-produto.jsp" class="btn btn-warning btn-xs">Adicionar
							Produto</a><a href="index.jsp" class="btn btn-default btn-xs">Voltar</a>
						<br /> <br />

						<table class="table">
							<thead>

								<tr>
									<td><strong>nome</strong></td>
									<td><strong>valor</strong></td>
									<td><strong>estoque</strong></td>
									<td><strong>categoria</strong></td>
									<td><strong>fabricante</strong></td>
									<td><strong>imagem</strong></td>
									<td><strong>a��es</strong></td>

								</tr>

							</thead>
							<tbody>
								<jsp:useBean id="pa" class="servico.ProdutoServico"></jsp:useBean>
								<c:forEach var="produto" items="${pa.listar() }">
									<tr>
									<fmt:setLocale value="pt_br"/>
										<td>${produto.nome}</td>
										<td><fmt:formatNumber value="${produto.valor}" type="currency"/></td>
										<td>${produto.estoque}</td>
										<td>${produto.categoria.nome}</td>
										<td>${produto.fabricante.nome}</td>
										<td><a href="../imagens-produtos/${produto.imagem}"
											target="_blank" class="btn btn-warning btn-xs">Visualizar</a></td>
										<td><a href="../ServletEditarProduto?id=${produto.id }"
											class="btn btn-primary btn-xs">Editar</a> <a
											href="../ServletRemoverProduto?id=${produto.id }"
											class="btn btn-danger btn-xs">remover</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>


					</div>
				</div>
			</div>
		</div>
	</section>

  <script src="resources/js/jquery-3.2.1.min.js"></script>
 <%@ include file="footer.jsp" %>
