create database Pedidos;


create table Cliente(   
    cod INT NOT NULL,
    nome VARCHAR(100) NOT NULL,

    CONSTRAINT PK_CLIENTE PRIMARY KEY (cod)

)

create table Pedido(
    npedido INT NOT NULL,
    dataPedido INT NOT NULL,
    cod_Cliente INT NOT NULL,

    constraint PK_Pedido primary key (npedido),
    constraint FK_cod_Cliente_Cliente foreign key (cod_Cliente) references Cliente (cod)
)

create table PedidoTel (
    numtel INT NOT NULL,
    num_Pedido INT NOT NULL,

    constraint PK_PedidoTel primary key (num_Pedido, numtel),
    constraint FK_Pedido_Tel_Pedido foreign key (num_Pedido) references Pedido (npedido)
)

create table Peca (
    npeca INT NOT NULL,
    descriP VARCHAR (100) NOT NULL,
    
    constraint PK_Peca primary key (npeca) 
)

create table ItemPedido (
    quantpeca INT NOT NULL,
    num_Pedido INT NOT NULL,
    cod_peca INT NOT NULL,

    constraint FK_Item_Pedido_Pedido foreign key (num_Pedido) references Pedido (npedido),
    constraint FK_Item_Pedido_Peca foreign key (cod_peca) references Peca (npeca)
);

