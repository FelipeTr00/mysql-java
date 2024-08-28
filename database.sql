** Banco de Dados **
CREATE DATABASE aula_5;

CREATE TABLE cenas (
	id_cena int not null primary key auto_increment,
	descricao varchar(255)
);

CREATE TABLE itens (
	id_item int not null primary key auto_increment,
	nome varchar(255),
	descricao_positiva varchar(255),
	descricao_negativa varchar(255),
	comando_correto varchar(255),
	id_cena_atual int,
	id_cena_destino int,
	FOREIGN KEY(id_cena_atual) REFERENCES cenas(id_cena)
);
joao paulo seu feio


INSERT INTO cenas(descricao) VALUES
('João paulo se matriculou no curso de tads, em seu quarto tinha NOTEBOOK, CADERNO e um PLAYSTATION. Ajude joão a ir para sua primeira aula'),
('João paulo chegou feliz na aula com seu notebook.');

INSERT INTO itens(nome,descricao_positiva,descricao_negativa,comando_correto,id_cena_atual,id_cena_destino) VALUES
('NOTEBOOK','Notebook parece ótimo, vamos levá-lo','Olha, parece promissor, que tal tentar outro comando?','USE NOTEBOOK', 1, 2),
('CADERNO','','Que gracinha, caderno é muito bom, mas a galera de tecnologia quase não usa caderno','USE NOTEBOOK', 1, null),
('PLAYSTATION','','Tem certeza que é para a faculdade que você está indo?','USE NOTEBOOK', 1, null);