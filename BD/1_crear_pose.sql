CREATE TABLE Estatus (
  EstatusId   char(2) NOT NULL, 
  Descripcion varchar(50) NOT NULL, 
  Categoria   varchar(20) NOT NULL, 
  PRIMARY KEY (EstatusId)) ENGINE=InnoDB;
CREATE TABLE Persona (
  PersonaId      int(10) NOT NULL AUTO_INCREMENT, 
  Nombre          varchar(50) NOT NULL, 
  ApellidoPaterno varchar(50) NOT NULL, 
  ApellidoMaterno varchar(50), 
  Usuario         varchar(10) NOT NULL UNIQUE, 
  Clave           varchar(10) NOT NULL, 
  Perfil          varchar(15) NOT NULL, 
  EstatusId       char(2) NOT NULL, 
  PRIMARY KEY (PersonaId)) ENGINE=InnoDB;
ALTER TABLE Persona ADD INDEX FKEstatus_Persona (EstatusId), ADD CONSTRAINT FKEstatus_Persona FOREIGN KEY (EstatusId) REFERENCES Estatus (EstatusId);
