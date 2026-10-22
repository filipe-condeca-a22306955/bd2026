/*
CREATE DATABASE Datawarehouse

CREATE TABLE Clientes (
ClienteID INT PRIMARY KEY,
);

CREATE TABLE Pedidos (
PedidoID INT PRIMARY KEY,
ClienteID INT,
FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID) );

CREATE TABLE Departamentos (
DepartamentoID INT PRIMARY KEY,
);

CREATE TABLE Funcionarios (
FuncionarioID INT PRIMARY KEY,
DepartamentoID INT,
FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID) );


CREATE TABLE Cursos (
CursoID INT PRIMARY KEY,
);

CREATE TABLE Matriculas (
AlunoID INT,
CursoID INT,
FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID) );
*/

USE Datawarehouse

CREATE TABLE Cursos (
CursoID INT PRIMARY KEY,
);

CREATE TABLE Matriculas (
AlunoID INT,
CursoID INT,
FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID) );