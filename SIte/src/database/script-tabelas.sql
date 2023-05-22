USE club_nba;

CREATE TABLE usuario(
idLogin INT PRIMARY KEY auto_increment,
usuario VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(45)
);

SELECT * FROM team;


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

ALTER TABLE usuario ADD COLUMN enquete1 INT;

SELECT * FROM jogador;



select * from voto;
TRUNCATE TABLE voto;

CREATE TABLE team (
idTime INT PRIMARY KEY auto_increment,
nome VARCHAR (45),
champ VARCHAR (100),
estadio VARCHAR (45),
nomes_antigos VARCHAR (100)
);

SELECT * FROM usuario;
CREATE TABLE jogador (
idJogador INT,
fkTime INT,
nome_jogador VARCHAR(45),
pts VARCHAR(45),
trb VARCHAR(45),
ast VARCHAR(45),
fg VARCHAR(45),
fg3 VARCHAR(45),
ft VARCHAR(45),
constraint fkTime FOREIGN KEY (fkTime) REFERENCES team (idTime),
CONSTRAINT pkComposta PRIMARY KEY (idJogador, fkTime)
);
DROP table jogador;
INSERT INTO team VALUES
	(null, 'Dallas Maverick', '1', '', ''),
    (null, 'Denver Nuggets', '0', '', 'Denver Rockets'),
    (null, 'Golden State Warriors', '7', '', 'San Francisco Warriors, Philadelphia Warriors'),
    (null, 'Houston Rockets', '2', '', 'San Diego Rockets'),
    (null, 'Los Angeles Clippers', '0', '', 'San Diego Clippers, Buffalo Braves'),
    (null, 'Los Angeles Lakers', '17', '', 'Minneapolis Lakers'),
    (null, 'Memphis Grizzlies', '0', '', 'Vancouver Grizzlies'),
    (null, 'Minnesota Timberwolves', '0', '', ''),
    (null, 'New Orleans Pelicans', '0', '', 'New Orleans/Oklahoma City Hornets, New Orleans Hornets'),
    (null, 'Oklahoma City Thunder', '1', '', ' Seattle SuperSonics'),
    (null, 'Phoenix Suns', '0', '', ''),
    (null, 'Portland Trail Blazers', '1', '', ''),
    (null, 'Sacramento Kings', '1', '', 'Kansas City Kings, Kansas City-Omaha Kings, Cincinnati Royals, Rochester Royals'),
    (null, 'San Antonio Spurs', '5', '', 'Texas Chaparrals, Dallas Chaparrals'),
    (null, 'Utah Jazz', '0', '', 'New Orleans Jazz'),
    (null, 'Atlanta Hawks', '1', '', 'Milwaukee Hawks, Tri-Cities Blackhawks'),
    (null, 'Boston Celtics', '17', '', ''),
    (null, 'Brooklyn Nets', '2', '', 'New Jersey Nets, New York Nets, New Jersey Americans'),
    (null, 'Charlotte Hornets', '0', '', 'Charlotte Bobcats'),
    (null, 'Chicago Bulls', '6', '', ''),
    (null, 'Cleveland Cavaliers', '1', '', ''),
    (null, 'Detroit Pistons', '3', '', 'Fort Wayne Pistons'),
    (null, 'Indiana Pacers', '3', '', ''),
    (null, 'Miami Heat', '3', '', ''),
    (null, 'Milwaukee Bucks', '2', '', ''),
    (null, 'New York Knicks', '2', '', ''),
    (null, 'Orlando Magic', '0', '', ''),
    (null, 'Philadelphia 76ers', '3', '', 'Syracuse Nationals'),
    (null, 'Toronto Raptors', '1', '', ''),
    (null, 'Washington Wizards', '1', '', 'Washington Bullets, Capital Bullets, Baltimore Bullets, Chicago Zephyrs, Chicago Packers');
    
INSERT INTO jogador VALUES
	(1,1,'Dirk Nowitzki', '20.7', '7.5', '2.4', '47.1%', '38.0%', '87.9%'),
    (1,2,'Nikola Jokic', '20.2', '10.5', '6.6', '55.3%', '34.8%', '82.9%'),
    (1,3,'Stephen Curry', '24.6', '4.7', '6.5', '47.5%', '42.8%', '90.9%'),
    (1,4,'Hakeem Olajuwon', '21.8', '11.1', '2.5', '51.2%', '20.2%', '71.2%'),
    (1,5,'Blake Griffin', '19.0', '8.0', '4.0', '49.3%', '32.8%', '69.6%'),
    (1,6,'Kobe Bryant', '25.0', '5.2', '4.7', '44.7%', '32.9%', '83.7%'),
    (1,7,'Ja Morant', '22.4', '4.8', '7.4', '47.2%', '%', '%'),
    (1,8,'Kevin Garnett', '17.8', '10.0', '3.7', '49.7%', '27.5%', '78.9%'),
    (1,9,'Chris Paul', '17.9', '4.5', '9.5', '47.2%', '36.9%', '87.0%'),
    (1,10,'Kevin Durant', '27.3', '7.1', '4.3', '49.9%', '38.5%', '88.6%'),
    (1,11,'Steve Nash', '14.3', '3.0', '8.5', '49.0%', '42.8%', '90.4%'),
    (1,12,'Damian Lillard', '25.2', '4.2', '6.7', '43.9%', '37.2%', '89.5%'),
    (1,13,'Oscar Robertson', '25.7', '7.5', '9.5', '48.5%', 'inexistente', '83.8%'),
    (1,14,'Tim Duncan', '19.0', '10.8', '3.0', '50.6%', '17.9%', '69.6%'),
    (1,15,'Karl Malone', '25.0', '10.1', '3.6', '51.6%', '27.4%', '74.2%'),
    (1,16,'Bob Pettit', '26.4', '16.2', '3.0', '43.6%', 'inexistente', '76.1%'),
    (1,17,'Larry Bird', '24.3', '10.0', '6.3', '49.6%', '37.6%', '88.6%'),
    (1,18,'Julius Erving', '24.2', '8.5', '4.2', '50.6%', '29.8%', '77.7%'),
    (1,19,'Kemba Walker', '19.3', '3.8', '5.3', '41.8%', '36.0%', '84.0%'),
    (1,20,'Michael Jordan', '30.1', '6.2', '5.3', '49.7%', '32.7%', '83.5%'),
    (1,21,'Lebron James', '27.2', '7.5', '7.3', '50.5%', '34.5%', '73.5%'),
    (1,22,'Isiah Thomas', '19.2', '3.6', '9.3', '45.2%', '29.0%', '75.9%'),
    (1,23,'Reggie Miller', '18.2', '3.0', '3.0', '47.1%', '39.5%', '88.8%'),
    (1,24,'Dwyane Wade', '22.0', '4.7', '5.4', '48.0%', '29.3%', '76.5%'),
    (1,25,'Kareem Abdul-Jabbar', '24.6', '11.2', '3.6', '55.9%', '5.6%', '72.1%'),
    (1,26,'Patrick Ewing', '21.0', '9.8', '1.9', '50.4%', '15.2%', '74.0	%'),
    (1,27,"Shaquille O'Neal", '23.7', '10.9', '2.5', '58.2%', '4.5%', '52.7%'),
    (1,28,'Wilt Chamberlain', '30.1', '22.9', '4.4', '54.0%', 'inexistente', '51.1%'),
    (1,29,'Vince Carter', '16.7', '4.3', '3.1', '43.5%', '37.1%', '79.8%'),
    (1,30,'Elvin Hayes', '21.0', '12.5', '1.8', '45.2%', '14.7%', '67.0%');
    -- (1,1,'', '', '', '', '%', '%', '%'),
    
    
    
    