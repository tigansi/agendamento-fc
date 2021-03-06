create database agenda
default character set utf8
default collate utf8_general_ci;

use agenda;

CREATE TABLE medico
(
	id 	  	       int auto_increment primary key,
	email 		   varchar(80)  not null,
	nome  	       varchar(100) not null,
	senha 		   text         not null,
	data_criacao   timestamp    default current_timestamp,
	data_alteracao timestamp    default current_timestamp
)DEFAULT CHARSET=utf8;

CREATE TABLE horario
(
	# horario_agendado = 0 -> liberado
	# horario_agendado = 1 -> ocupado
	
	id 		 	     int       auto_increment primary key,
	id_medico 	     int 	   not null,
	data_horario     datetime,
	horario_agendado int 	   default 0,
	data_criacao     timestamp default current_timestamp,
	data_alteracao   timestamp default current_timestamp,
	FOREIGN KEY (id_medico) REFERENCES medico(id)
)DEFAULT CHARSET=utf8;


INSERT 
	INTO 
		medico (email, nome, senha) 
	VALUES('tiago@igansi.com', 'Tiago Igansi', 'e10adc3949ba59abbe56e057f20f883e'),
	VALUES('1@1.com', 'Dr. João Augusto de Alcântara', 'e10adc3949ba59abbe56e057f20f883e')

# Senha 123456



