<%@include file="top.jsp" %>


		<title>Busca por produto</title>
		<section class="container-fluid">
			<div class="row">
				<div class="col-md-8 col-md-offset-2" style="background-color: rgba(42, 42, 42, 0.9); margin-top: 5%; margin-bottom: 5%; padding: 3% 3% 3% 3%; color:#ffffff;">
					<h1 class="fonte"><center>Resultado de Busca</center></h1>
					<hr>
					<br />
					<br />
					<c:if test="${resultadoBusca.size() < 1 }">
						<h2 class="fonte">Nenhum produto encontrado ... :(</h2>
					</c:if>
			
					
			<div class="col-md-12" style="color: rgba(192, 77, 22, 0.1);">
					<c:forEach var="produto" items="${resultadoBusca}">
					
					<div class="col-md-4 col-md-4-offset-4" id="conteudo">
			        	<div class="thumbnail">
				        	<fmt:setLocale value="pt_br"/>
						    	<img src="imagens-produtos/${produto.imagem}" alt="Paris" width="300" height="300">
						        <center><p><strong>${produto.nome} </strong></p></center>
						        <center><p><i><fmt:formatNumber value="${produto.valor}" type="currency"/></i></p></center>
						        <center>><a href="ServletDetalharProduto?id=${produto.id }" class="btn">Ver Detalhes</a>
						        <a href="ServletAdicionarAoCarrinho?id=${produto.id }" class="btn btn-default btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span></a>
						        
					    </div>
					    
				    
		      	</div>
		      	<!-- 
		      	
		      	<div class="col-md-4 col-md-4-offset-4" id="conteudo">
		        	<div class="thumbnail">
			        	<fmt:setLocale value="pt_br"/>
					    	<img src="imagens-produtos/${produto.imagem}" alt="Paris" width="300" height="300">
					        <center><p><strong>${produto.nome} </strong></p></center>
					        <center><p><i><fmt:formatNumber value="${produto.valor}" type="currency"/></i></p></center>
					        <center>><a href="ServletDetalharProduto?id=${produto.id }" class="btn">Ver Detalhes</a>
					        <a href="ServletAdicionarAoCarrinho?id=${produto.id }" class="btn btn-default btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span></a>
					        
				    </div>
				    
		      	</div>
		      	<div class="col-md-4 col-md-4-offset-4" id="conteudo">
		        	<div class="thumbnail">
			        	<fmt:setLocale value="pt_br"/>
					    	<img src="imagens-produtos/${produto.imagem}" alt="Paris" width="300" height="300">
					        <center><p><strong>${produto.nome} </strong></p></center>
					        <center><p><i><fmt:formatNumber value="${produto.valor}" type="currency"/></i></p></center>
					        <center>><a href="ServletDetalharProduto?id=${produto.id }" class="btn">Ver Detalhes</a>
					        <a href="ServletAdicionarAoCarrinho?id=${produto.id }" class="btn btn-default btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span></a>
					        
				    </div>
				    
		      	</div>
		      	 -->
		      	 </c:forEach>
				</div>
				
			
		
		</div>					
		</section>
		
		
<%@include file="footer.jsp" %>		








