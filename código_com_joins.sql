 create table prefeito
(   
    codigo1 numeric (8),
	nome_completo VARCHAR (100),
    salarioPrefeito VARCHAR (100),
	id SERIAL,
    
    primary key (codigo1)   
 ); 
 
 create table vereador
(   
    codigo2 numeric (8),
	nome_completo VARCHAR (100),
    salarioVereador VARCHAR (100),
	id SERIAL,
    primary key (codigo2)   
 ) ;
 
create table funcionario_da_camara
(
	codigo3 numeric (8),
	nome_completo VARCHAR (100),
	cargo VARCHAR (100),
	salario_F_camara VARCHAR (100),
	id SERIAL,
	primary key (codigo3)
);

create table funcionario_da_prefeitura
(	
	codigo4 numeric (8),	
	nome_completo VARCHAR (100),
	cargo VARCHAR (100),
	salario_F_prefeitura VARCHAR (100),
	id SERIAL,
	primary key (codigo4)
);

create table gastos
(
    codigo5 numeric(8),
    diariasHotel numeric (100),
    viagensFeitas numeric (100),
	FOREIGN KEY (codigo1) REFERENCES prefeito (codigo1),
	FOREIGN KEY (codigo2) REFERENCES vereador (codigo2),
	FOREIGN KEY (codigo3) REFERENCES funcionario_da_camara (codigo3),
	FOREIGN KEY (codigo4) REFERENCES funcionario_da_prefeitura (codigo4)
	
);
	


create table projetos
(
 	 codigo6 numeric (8),
	 ProjetoProposto varchar (500),
	 FOREIGN KEY (codigo1) REFERENCES prefeito (codigo1),
	 FOREIGN KEY (codigo2) REFERENCES vereador (codigo2)
);


 select
 s.diariasHotel,
 s.viagensFeitas
 from gastos as s
 inner join prefeito as f on s.codigo5=f.codigo1;
 
 
 select 
 s.diariasHotel,
 s.viagensFeitas
 from gastos as s
 inner join vereador as v on  s.codigo5=v.codigo2;
 
 select
 e.ProjetoProposto
 
 from projeto as e
 inner join prefeito as f on e.codigo6=f.codigo1;
 
 select 
 e.ProjetoProposto
 
 from projeto as e
 inner join vereador as v on  e.codigo6=v.codigo2;

 select
 s.diariasHotel,
 s.viagensFeitas
 from gastos as s
 inner join funcionario_da_camara as b on s.codigo5=b.codigo3;
 
 select
 s.diariasHotel,
 s.viagensFeitas
 from gastos as s
 inner join funcionario_da_prefeitura as n on s.codigo5=n.codigo4;
 