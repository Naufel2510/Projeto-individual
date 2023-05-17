USE club_nba;

CREATE TABLE usuario(
idLogin INT PRIMARY KEY auto_increment,
usuario VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(45)
);

SELECT * FROM voto;

truncate table voto;

 SELECT * FROM usuario JOIN voto ON idLogin = fkUsuario WHERE usuario.email = 'felipe.santiago@sptech.school' AND usuario.senha = 'abc';

CREATE TABLE enquete(
idEnquete INT PRIMARY KEY auto_increment,
nome VARCHAR (45)
);

INSERT INTO enquete VALUES
	(null, 'Melhor JOgador de todos os tempos');
    


CREATE TABLE voto (
fkEnquete INT,
fkUsuario INT,
voto VARCHAR(45),
constraint fkEnquete foreign key (fkEnquete) references enquete(idEnquete),
constraint fkUsuario foreign key (fkUsuario) references usuario(idLogin),
constraint pkCompostaEnquete primary key (fkEnquete, fkUsuario, voto)
);

SELECT * FROM voto JOIN usuario ON fkUsuario = idLogin WHERE email = '${sessionStorage.EMAIL_USUARIO}';

truncate table voto;