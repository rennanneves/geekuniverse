create database if not exists lojaVirtual;
use lojaVirtual;

create table if not exists endereco(
id int primary key auto_increment,
pais varchar(45) not null,
estado varchar(45) not null,
cidade varchar(45) not null,
bairro varchar(45) not null,
rua varchar(45) not null,
numero INT not null,
complemento varchar(45) not null,
cep varchar(45) not null
) engine = InnoDB comment="Tabela de Endereço";

create table if not exists usuario(
id int primary key auto_increment,
endereco_id int,
nome varchar(100) not null,
sobrenome varchar(100) not null,
dataNascimento date not null,
sexo varchar(45) not null,
celular int(14) not null,
telefoneFixo int(13) not null,
cpf varchar(14) not null,
rg varchar(14) not null,
email  varchar(100) not null,
senha varchar(45) not null,
tipoUsuario varchar(45) not null,
status boolean not null,
foreign key(endereco_id) references endereco(id)
) engine = InnoDB comment="Tabela de Usuario";

create table  if not exists fabricante(
id int primary key auto_increment,
nome varchar(100) not null,
cnpj varchar(25),
status boolean not null
) engine = InnoDB comment="Tabela do Fabricante";

create table if not exists categoria(
id int primary key auto_increment,
nome varchar(100) not null,
status boolean not null
) engine = InnoDB comment="Tabela da Categoria";

create table if not exists formaPagamento(
id  int primary key auto_increment,
tipoPagamento varchar(50) not null,
parcelas int not null,
valor double not null
) engine = InnoDB comment="Tabela de Forma de Pagamento";

create table if not exists produto(
id int primary key auto_increment,
fabricante_id int,
categoria_id int,
nome varchar(45) not null,
descricao varchar(45) not null,
valor double not null,
estoque int not null,
imagem varchar(45) not null,
foreign key(fabricante_id) references fabricante(id),
foreign key (categoria_id) references categoria(id)
) engine = InnoDB comment="Tabela de Produto";

create table if not exists pedido(
id int primary key auto_increment,
usuario_id int,
formaPagamento_id int,
numeroPedido int not null,
cliente varchar(100) not null,
produtos varchar(255) not null,
formaPagamento varchar(100) not null,
status varchar(100) not null,
dataPedido date not null,
foreign key(usuario_id) references usuario(id),
foreign key (formaPagamento_id) references formaPagamento(id)
) engine = InnoDB comment="Tabela do Pedido"; 

create table if not exists item(
id int primary key auto_increment,
produto_id int,
pedido_id int,
quantidade int not null,
preco double not  null,
foreign key(produto_id) references produto(id),
foreign key (pedido_id) references pedido(id)
) engine=InnoDB comment="Tabela de Itens";






