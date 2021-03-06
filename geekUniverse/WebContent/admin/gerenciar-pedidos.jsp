 <%@ include file="top.jsp" %>
 <title>Gerencia de Pedidos</title>
	<section class="container">
		<div class="jumbotron jumbotron-fluid">
				<div class="row">
					<div
						class=" col-md-12  col-sm-12  col-xs-12 col-lg-12 ">
						<c:choose>
							<c:when test="${param.pedido == 'sucesso' }">
								<div class="alert alert-success alert-dismissible" role="alert">
									  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									  <strong>Sucesso!</strong> ${msgStatus}
								</div>
							</c:when>
							<c:when test="${param.pedido == 'erro' }">
								<div class="alert alert-danger alert-dismissible" role="alert">
									  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									  <strong>Erro!</strong>${msgStatus}
								</div>
							</c:when>
						</c:choose>
						<legend>
							<center>Gerenciar Pedidos</center>
						</legend>
						<a href="index.jsp" class="btn btn-default btn-xs">Voltar</a>
						<br /> <br />

						<table class="table">
							<thead>

								<tr>
									<td><strong>N�mero do Pedido</strong></td>
									<td><strong>Cliente</strong></td>
									<td><strong>Data</strong></td>
									<td><strong>Status</strong></td>
									<td><strong>Alterar Status</strong></td>
								</tr>

							</thead>
							<tbody>
								<jsp:useBean id="pe" class="servico.PedidoServico"></jsp:useBean>
								<c:forEach var="pedido" items="${pe.listar() }">
									<tr>
										<td>${pedido.numeroPedido}</td>
										<td>${pedido.cliente.nome } ${pedido.cliente.sobrenome}</td>
										<td>${pedido.dataPedido}</td>
										<td>${pedido.statusPedido}</td>
										<td>
											<form action="..\ServletEditarPedido" method="POST">
												<div class="input-group">
													<div style="display: none;">
														<input type="text" name="id" id="id" value="${pedido.id }"/>
													</div>
													<select  name="status" id="status">
														<optgroup label="status">
															<option value="em analise">Em analise</option>
															<option value="cancelado" >Cancelado</option>
															<option value="finalizado">Finalizado</option>
															
														</optgroup>
													</select>
													<button type="submit" class="btn btn-warning btn-xs">Alterar</button>
												</div>
												
											</form>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>


					</div>
				</div>
			</div>
		</div>
	</section>

 <script src="resources/js/jquery-3.2.1.min.js" charset="UTF-8"></script>
 
<!--Status Modal-->
      <!-- Modal -->
        <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" id="statusModal">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Alterar Status do Pedido</h4>
              </div>
              <div class="modal-body">
                 <form action="..\ServletEditarPedido" method="POST" >
                      <div class="input-group">
						<label for="status" class="label-control">Status</label>
						<select name="status" id="status" class="form-control">
							<optgroup label="status">
								<option value="cancelado" >Cancelado</option>
								<option value="finalizado">Finalizado</option>
								<option value="em analise">Em analise</option>
							</optgroup>
						</select>
						<div style="display: none;">
							<input type="text" value="${pedido.id }"/>
						</div>
                      </div>
                      <br/>	
                      <div class="input-group">
                          <button type="submit" class="btn btn-warning">Alterar</button>
                      </div>
                  </form>
              </div>
           </div>
          </div>
        </div>
 
 <%@ include file="footer.jsp" %>
