-- criação do banco de dados para e-commerce
create database ecommerce;

-- criação da tabela customers

create table customers(
	customer_id int not null auto_increment,
    nome VARCHAR (50),
    cpf VARCHAR (12),
    email VARCHAR (100),
    address VARCHAR(100),
    phone_number VARCHAR (15)
);

-- criação da tabela  products
create table products(
	product_id int not null auto_increment primary key,
    nome VARCHAR (50), 
    descricao VARCHAR (155),
    price VARCHAR (5),
    quantity INT
);

-- craição da tabela orders
create table orders(
	order_id int not null auto_increment,
    constraint fk_customer_id foreign key (customer_id) references customers,
    order_date datetime,
    total_amount int
);

-- crição da tabela orders dateils
create table order_detail(
	id int not null auto_increment,
    constraint fk_order_id foreign key (order_id) references orders,
    constraint fk_product_id foreign key (products_id) references products,
    quatity int,
    price VARCHAR(05)
);

-- crição da tabela payment
create table payment(
	payment_id int not null auto_increment,
	constraint fk_order_id foreign key (order_id) references orders,
    payment_date VARCHAR (10),
    amount int 
	
);

-- criaçõa da tabela shipping
create table shipping (
	shipping_id int not null auto_increment,
    constraint fk_order_id foreign key (order_id) references orders,
    shipping_date VARCHAR (10),
    traking_number VARCHAR (15)
);

-- criação da tabela wish list
create table wish_list(
	wishList_id int not null auto_increment,
    constraint fk_customer_id foreign key (customer_id) references customers,
    constraint fk_product_id  foreign key (product_id) references products
);

-- criação da tabela status 
create table statu (
	statu_id int not null auto_increment,
	constraint fk_customer_id foreign key(customer_id ) references customers,
    constraint fk_product_id foreign key (product_id) references products,
    stars int 
    );