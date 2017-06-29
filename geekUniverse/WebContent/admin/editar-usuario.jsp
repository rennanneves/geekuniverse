<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="resources/css/estilo.css"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Cadastro de Usuario</title>

    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
 
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via fsile:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
    <body background="img/">
  <section>
  <nav class="navbar navbar-inverse" id="nav">
    <div>
      <img class="img-responsive" src="resources/images/novo2.png" id="logo">
    </div>
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>                        
          </button>
        </div>
      </div>
        <div class="collapse navbar-collapse" id="myNavbar top2">
          <ul class="nav navbar-nav"> 
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="drop">DROP1<span class="caret"></span></a>
              <ul class="dropdown-menu" id="atrib">
                <li><a href="#">atributo1</a></li>
                <li><a href="#">atributo2</a></li>
                <li><a href="#">atributo3</a></li>
                <li><a href="#">atributo4</a></li>
                <li><a href="#">atributo5</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="drop">DROP2<span class="caret"></span></a>
              <ul class="dropdown-menu" id="atrib">
                <li><a href="#">atributo1</a></li>
                <li><a href="#">atributo2</a></li>
                <li><a href="#">atributo3</a></li>
                <li><a href="#">atributo4</a></li>
                <li><a href="#">atributo5</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="drop">DROP3<span class="caret"></span></a>
              <ul class="dropdown-menu" id="atrib">
                <li><a href="#">atributo1</a></li>
                <li><a href="#">atributo2</a></li>
                <li><a href="#">atributo3</a></li>
                <li><a href="#">atributo4</a></li>
                <li><a href="#">atributo5</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="drop">DROP4<span class="caret"></span></a>
                <ul class="dropdown-menu" id="atrib">
                    <li><a href="#">atributo1</a></li>
                    <li><a href="#">atributo2</a></li>
                    <li><a href="#">atributo3</a></li>
                    <li><a href="#">atributo4</a></li>
                    <li><a href="#">atributo5</a></li>
                </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="drop">DROP5<span class="caret"></span></a>
              <ul class="dropdown-menu" id="atrib">
                <li><a href="#">atributo1</a></li>
                <li><a href="#">atributo2</a></li>
                <li><a href="#">atributo3</a></li>
                <li><a href="#">atributo4</a></li>
                <li><a href="#">atributo5</a></li>
              </ul>
            </li>
          </ul>
          </div>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user" id="drop"></span> Minha Conta</a></li> 
          </ul>

          <div>
             <form>
                <input class="form-control" type="text" placeholder="Search" id="input">
               <button class="btn btn-outline-success" type="submit" id="button">Search</button>
             </form>
          </div>
  </nav>
  <div class="fundo col-md-6 col-md-offset-3">
    <br/>
      <div class="container-fluid">
          <div class="row">
            <div class=" col-md-6 col-md-offset-3 col-sm-6 col-offset-3 col-xs-6 col-xs-offset-3 col-lg-6 col-lg-offset-3">
              <legend><center>Editar Usuário</center></legend>
              <form name="frmCadastrarUsuario" id="frmCadastrarUsuario" action="../ServletEditarUsuario" method="POST">
                <div class="form-group">
                  <label class="control-label" for="nome">Nome</label>
                  <div class="validateError">
                    <input type="text" name="nome" id="nome" class="form-control" value="${usuario.nome }" />
                  </div>
                </div>   
                <div class="form-group">
                  <label class="control-label" for="sobrenome">Sobrenome</label>
                  <div class="validateError">
                    <input type="text" name="sobrenome" id="sobrenome" class="form-control" value="${usuario.sobrenome }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="sexo">Sexo</label>
                  <div class="validateError">
                    <select name="sexo" id="sexo" class="form-control">
                    	<optgroup>
                    	<c:if test="${usuario.sexo == 'Masculino'}">
                    		<option value="Masculino" selected>Masculino</option>
                    		<option value="Feminino">Feminino</option>
                    	</c:if>	
                    	<c:if test="${usuario.sexo == 'Feminino'}">
                    		<option value="Masculino" selected>Masculino</option>
                    		<option value="Feminino" selected>Feminino</option>
                    	</c:if>
                    	</optgroup>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="pais">Pais</label>
                  <div class="validateError">
                    <input type="text" name="pais" id="pais" class="form-control" value="${usuario.endereco.pais }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="estado">Estado</label>
                  <div class="validateError">
                    <select class="form-control" name="estado" id="estado">
                     <jsp:useBean id="cu" class="servico.EstadoServico"></jsp:useBean>
                      <optgroup>
                   		<c:forEach var="estado" items="${cu.listar() }">
                   		<c:if test="${usuario.endereco.estado.descricao == estado.descricao}">
                   			<option value="${estado.id }" selected>${estado.descricao}</option>
                   		</c:if>	
                   		<c:if test="${usuario.endereco.estado.descricao != estado.descricao}">
                   			<option value="${estado.id }" >${estado.descricao}</option>
                   		</c:if>
                      </c:forEach>
                      </optgroup>
                    </select>
                  </div>  
                </div>
                <div class="form-group">
                  <label class="control-label" for="cidade">Cidade</label>
                  <div class="validateError">
                    <input type="text" name="cidade" id="cidade" class="form-control" value="${usuario.endereco.cidade }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="bairro">Bairro</label>
                  <div class="validateError">
                    <input type="text" name="bairro" id="bairro" class="form-control" value="${usuario.endereco.bairro }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="rua">Rua</label>
                  <div class="validateError">
                    <input type="text" name="rua" id="rua" class="form-control" value="${usuario.endereco.rua }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="numero">Numero</label>
                  <div class="validateError">
                    <input type="text" name="numero" id="numero" class="form-control" value="${usuario.endereco.numero }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="complemento">Complemento</label>
                  <div class="validateError">
                    <input type="text" name="complemento" id="complemento" class="form-control" value="${usuario.endereco.complemento }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="cep">CEP</label>
                  <div class="validateError">
                    <input type="text" name="cep" id="cep" class="form-control" value="${usuario.endereco.cep }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="dataNascimento">Data de Nascimento</label>
                  <div class="validateError">
                    <input type="date" name="dataNascimento" id="dataNascimento" class="form-control" value="${usuario.dataNascimento }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="celular">Celular</label>
                  <div class="validateError">
                    <input type="text" name="celular" id="celular" class="form-control" value="${usuario.celular }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="telFixo">Telefone Fixo</label>
                  <div class="validateError">
                    <input type="text" name="telefoneFixo" id="telefoneFixo" class="form-control" value="${usuario.telefoneFixo }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="cpf">CPF</label>
                  <div class="validateError">
                    <input type="text" name="cpf" id="cpf" class="form-control" value="${usuario.cpf }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="rg">RG</label>
                  <div class="validateError">
                    <input type="text" name="rg" id="rg" class="form-control" value="${usuario.rg }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="email">Email</label>
                  <div class="validateError">
                    <input type="text" name="email" id="email" class="form-control" value="${usuario.email }"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="senha">Senha</label>
                  <div class="validateError">
                    <input type="password" name="senha" id="senha" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="tipoUsuario">Contas</label>
                    <select class="form-control" name="tipoUsuario" id="tipoUsuario">
                      <optgroup>
                      <c:if test="${usuario.tipoUsuario ne 'cliente' }">
                          <option value="administrador" selected>Administrador</option>
                          <option value="cliente">Usuario Comum</option> 
                      </c:if>  
                      <c:out value="${usuario.tipoUsuario }"/>
                      <c:if test="${usuario.tipoUsuario ne 'administrador'}">
                          <option value="administrador">Administrador</option>
                          <option value="cliente" selected>Usuario Comum</option> 
                      </c:if>  
                      </optgroup>
                    </select> 
                </div>
                <div class="form-group">
                  <label class="control-label" for="status">Status</label>
                    <select class="form-control" name="status" id="status">
                      <optgroup>
                      <c:if test="${usuario.status == 1}">
                          <option value="true" selected >Ativado</option>
                          <option value="false">Desativado</option> 
                       </c:if>  
                       <c:if test="${usuario.status == 0}">
                          <option value="true" >Ativado</option>
                          <option value="false" selected>Desativado</option> 
                       </c:if>  
                      </optgroup>
                    </select> 
                </div>
                <div class="form-group">
                  <input type="submit" name="btnCadastrar" value="Cadastrar" class="btn btn-warning">
                  <input type="reset" name="btnLimpar" value="Limpar" class="btn btn-default"/>
                </div>
               
              </form>
                	<a href="gerenciar-usuarios.jsp" class="btn btn-default">Voltar</a> 
            </div>   
          </div>
      </div>   
  </div>
</section>

      
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="resources/js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.maskMoney.min.js"></script>
    <script src="resources/js/jquery.validate.min.js"></script>
    <script src="resources/js/additional-methods.min.js"></script>
    <script src="resources/js/ConfiguracaoMaskMoney.js"></script>
    <script src="resources/js/validate-editar-usuario.js"></script>
    <!--<script src="resources/js/jquery.maskedinput.min.js"></script>-->
    <!-- <script src="resources/js/ConfiguracaoMaskInput.js"></script> -->
    <script src="resources/js/scripts.js"></script>
  </body>
</html> 