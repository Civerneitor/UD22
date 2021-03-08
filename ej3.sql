create database Laboratorio;
use Laboratorio;
drop table if exists Cientificos;
create table Cientificos (
DNI varchar(9) NOT NULL,
nomApels varchar(255),
PRIMARY KEY (DNI)
);

drop table if exists Proyectos;
create table Proyectos (
id char(4) NOT NULL,
nombre varchar(255),
horas int,
PRIMARY KEY (id)
);

drop table if exists Cientificos_Proyectos;
create table Cientificos_Proyectos (
dniC_fk varchar(8) NOT NULL,
idP_fk char(4) NOT NULL,
foreign key (dniC_fk) references Cientificos(DNI)
on update CASCADE
on delete no action,
foreign key (idP_fk) references Proyectos(id)
on update CASCADE
on delete no action
);