USE club_nba;

CREATE TABLE usuario(
idLogin INT PRIMARY KEY auto_increment,
usuario VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(45),
enquete1 INT,
enquete2 INT,
enquete3 INT
);

SELECT * FROM usuario;

desc usuario;


 SELECT * FROM usuario JOIN voto ON idLogin = fkUsuario WHERE usuario.email = 'felipe.santiago@sptech.school' AND usuario.senha = 'abc';

CREATE TABLE enquete(
idEnquete INT PRIMARY KEY auto_increment,
nome VARCHAR (45)
);

INSERT INTO enquete VALUES
	(null, 'Melhor JOgador de todos os tempos');

INSERT INTO enquete VALUES
	(null, 'Melhor Filme'),
    (null, 'Melhor Anime');
    
    


CREATE TABLE voto (
fkEnquete INT,
fkUsuario INT,
voto VARCHAR(45),
constraint fkEnquete foreign key (fkEnquete) references enquete(idEnquete),
constraint fkUsuario foreign key (fkUsuario) references usuario(idLogin),
constraint pkCompostaEnquete primary key (fkEnquete, fkUsuario, voto)
);


ALTER TABLE usuario add COLUMN enquete3 int;



update jogador set fg3 ='32.1%', ft = '75.3%' WHERE fkTime = 7;


use club_nba;
select * from voto;
SELECT count(voto) as voto, fkEnquete FROM voto WHERE voto = 'Kuroko no basquete' group by fkEnquete;
TRUNCATE TABLE voto;

CREATE TABLE team (
idTime INT PRIMARY KEY auto_increment,
nome VARCHAR (45),
champ VARCHAR (100),
nomes_antigos VARCHAR (100),
foto_time VARCHAR(150)
);

DROP TABLE jogador, team;

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
foto_jogador VARCHAR(150),
constraint fkTime FOREIGN KEY (fkTime) REFERENCES team (idTime),
CONSTRAINT pkComposta PRIMARY KEY (idJogador, fkTime)
);

INSERT INTO team VALUES
	(null, 'Dallas Maverick', '1', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/DAL.png'),
    (null, 'Denver Nuggets', '0', 'Denver Rockets', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/DEN.png'),
    (null, 'Golden State Warriors', '7', 'San Francisco Warriors, Philadelphia Warriors', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/GSW.png'),
    (null, 'Houston Rockets', '2', 'San Diego Rockets', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/HOU.png'),
    (null, 'Los Angeles Clippers', '0', 'San Diego Clippers, Buffalo Braves', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/LAC.png'),
    (null, 'Los Angeles Lakers', '17', 'Minneapolis Lakers', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/LAL.png'),
    (null, 'Memphis Grizzlies', '0', 'Vancouver Grizzlies', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/MEM.png'),
    (null, 'Minnesota Timberwolves', '0', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/MIN.png'),
    (null, 'New Orleans Pelicans', '0', 'New Orleans/Oklahoma City Hornets, New Orleans Hornets', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/NOH.png'),
    (null, 'Oklahoma City Thunder', '1', ' Seattle SuperSonics', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/OKC.png'),
    (null, 'Phoenix Suns', '0', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/PHO.png'),
    (null, 'Portland Trail Blazers', '1', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/POR.png'),
    (null, 'Sacramento Kings', '1', 'Kansas City Kings, Kansas City-Omaha Kings, Cincinnati Royals, Rochester Royals', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/SAC.png'),
    (null, 'San Antonio Spurs', '5', 'Texas Chaparrals, Dallas Chaparrals', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/SAS.png'),
    (null, 'Utah Jazz', '0', 'New Orleans Jazz', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/UTA.png'),
    (null, 'Atlanta Hawks', '1', 'Milwaukee Hawks, Tri-Cities Blackhawks', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/ATL.png'),
    (null, 'Boston Celtics', '17', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/BOS.png'),
    (null, 'Brooklyn Nets', '2', 'New Jersey Nets, New York Nets, New Jersey Americans', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/NJN.png'),
    (null, 'Charlotte Hornets', '0', 'Charlotte Bobcats', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/CHA.png'),
    (null, 'Chicago Bulls', '6', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/CHI.png'),
    (null, 'Cleveland Cavaliers', '1', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/CLE.png'),
    (null, 'Detroit Pistons', '3', 'Fort Wayne Pistons', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/DET.png'),
    (null, 'Indiana Pacers', '3', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/IND.png'),
    (null, 'Miami Heat', '3', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/MIA.png'),
    (null, 'Milwaukee Bucks', '2', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/MIL.png'),
    (null, 'New York Knicks', '2', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/NYK.png'),
    (null, 'Orlando Magic', '0', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/ORL.png'),
    (null, 'Philadelphia 76ers', '3', 'Syracuse Nationals', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/PHI.png'),
    (null, 'Toronto Raptors', '1', '', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/TOR.png'),
    (null, 'Washington Wizards', '1', 'Washington Bullets, Capital Bullets, Baltimore Bullets, Chicago Zephyrs, Chicago Packers', 'https://cdn.ssref.net/req/202305101/tlogo/bbr/WAS.png');
    
INSERT INTO jogador VALUES
	(1,1,'Dirk Nowitzki', '20.7', '7.5', '2.4', '47.1%', '38.0%', '87.9%', 'https://www.basketball-reference.com/req/202106291/images/headshots/nowitdi01.jpg'),
    (1,2,'Nikola Jokic', '20.2', '10.5', '6.6', '55.3%', '34.8%', '82.9%', 'https://www.basketball-reference.com/req/202106291/images/headshots/jokicni01.jpg'),
    (1,3,'Stephen Curry', '24.6', '4.7', '6.5', '47.5%', '42.8%', '90.9%', 'https://www.basketball-reference.com/req/202106291/images/headshots/curryst01.jpg'),
    (1,4,'Hakeem Olajuwon', '21.8', '11.1', '2.5', '51.2%', '20.2%', '71.2%', 'https://www.basketball-reference.com/req/202106291/images/headshots/olajuha01.jpg'),
    (1,5,'Blake Griffin', '19.0', '8.0', '4.0', '49.3%', '32.8%', '69.6%', 'https://www.basketball-reference.com/req/202106291/images/headshots/griffbl01.jpg'),
    (1,6,'Kobe Bryant', '25.0', '5.2', '4.7', '44.7%', '32.9%', '83.7%', 'https://www.basketball-reference.com/req/202106291/images/headshots/bryanko01.jpg'),
    (1,7,'Ja Morant', '22.4', '4.8', '7.4', '47.2%', '%', '%', 'https://www.basketball-reference.com/req/202106291/images/headshots/moranja01.jpg'),
    (1,8,'Kevin Garnett', '17.8', '10.0', '3.7', '49.7%', '27.5%', '78.9%', 'https://www.basketball-reference.com/req/202106291/images/headshots/garneke01.jpg'),
    (1,9,'Chris Paul', '17.9', '4.5', '9.5', '47.2%', '36.9%', '87.0%', 'https://www.basketball-reference.com/req/202106291/images/headshots/paulch01.jpg'),
    (1,10,'Kevin Durant', '27.3', '7.1', '4.3', '49.9%', '38.5%', '88.6%', 'https://www.basketball-reference.com/req/202106291/images/headshots/duranke01.jpg'),
    (1,11,'Steve Nash', '14.3', '3.0', '8.5', '49.0%', '42.8%', '90.4%', 'https://www.basketball-reference.com/req/202106291/images/headshots/nashst01.jpg'),
    (1,12,'Damian Lillard', '25.2', '4.2', '6.7', '43.9%', '37.2%', '89.5%', 'https://www.basketball-reference.com/req/202106291/images/headshots/lillada01.jpg'),
    (1,13,'Oscar Robertson', '25.7', '7.5', '9.5', '48.5%', 'inexistente', '83.8%', 'https://www.basketball-reference.com/req/202106291/images/headshots/roberos01.jpg	'),
    (1,14,'Tim Duncan', '19.0', '10.8', '3.0', '50.6%', '17.9%', '69.6%', 'https://www.basketball-reference.com/req/202106291/images/headshots/duncati01.jpg'),
    (1,15,'Karl Malone', '25.0', '10.1', '3.6', '51.6%', '27.4%', '74.2%', 'https://www.basketball-reference.com/req/202106291/images/headshots/malonka01.jpg'),
    (1,16,'Bob Pettit', '26.4', '16.2', '3.0', '43.6%', 'inexistente', '76.1%', 'https://www.basketball-reference.com/req/202106291/images/headshots/pettibo01.jpg'),
    (1,17,'Larry Bird', '24.3', '10.0', '6.3', '49.6%', '37.6%', '88.6%', 'https://www.basketball-reference.com/req/202106291/images/headshots/birdla01.jpg'),
    (1,18,'Julius Erving', '24.2', '8.5', '4.2', '50.6%', '29.8%', '77.7%', 'https://www.basketball-reference.com/req/202106291/images/headshots/ervinju01.jpg'),
    (1,19,'Kemba Walker', '19.3', '3.8', '5.3', '41.8%', '36.0%', '84.0%', 'https://www.basketball-reference.com/req/202106291/images/headshots/walkeke02.jpg'),
    (1,20,'Michael Jordan', '30.1', '6.2', '5.3', '49.7%', '32.7%', '83.5%', 'https://www.basketball-reference.com/req/202106291/images/headshots/jordami01.jpg'),
    (1,21,'Lebron James', '27.2', '7.5', '7.3', '50.5%', '34.5%', '73.5%', 'https://www.basketball-reference.com/req/202106291/images/headshots/jamesle01.jpg'),
    (1,22,'Isiah Thomas', '19.2', '3.6', '9.3', '45.2%', '29.0%', '75.9%', 'https://www.basketball-reference.com/req/202106291/images/headshots/thomais01.jpg'),
    (1,23,'Reggie Miller', '18.2', '3.0', '3.0', '47.1%', '39.5%', '88.8%', 'https://www.basketball-reference.com/req/202106291/images/headshots/millere01.jpg'),
    (1,24,'Dwyane Wade', '22.0', '4.7', '5.4', '48.0%', '29.3%', '76.5%', 'https://www.basketball-reference.com/req/202106291/images/headshots/wadedw01.jpg'),
    (1,25,'Kareem Abdul-Jabbar', '24.6', '11.2', '3.6', '55.9%', '5.6%', '72.1%', 'https://www.basketball-reference.com/req/202106291/images/headshots/abdulka01.jpg'),
    (1,26,'Patrick Ewing', '21.0', '9.8', '1.9', '50.4%', '15.2%', '74.0%', 'https://www.basketball-reference.com/req/202106291/images/headshots/ewingpa01.jpg'),
    (1,27,"Shaquille O'Neal", '23.7', '10.9', '2.5', '58.2%', '4.5%', '52.7%', 'https://www.basketball-reference.com/req/202106291/images/headshots/onealsh01.jpg'),
    (1,28,'Wilt Chamberlain', '30.1', '22.9', '4.4', '54.0%', 'inexistente', '51.1%', 'https://www.basketball-reference.com/req/202106291/images/headshots/onealsh01.jpg'),
    (1,29,'Vince Carter', '16.7', '4.3', '3.1', '43.5%', '37.1%', '79.8%', 'https://www.basketball-reference.com/req/202106291/images/headshots/cartevi01.jpg'),
    (1,30,'Elvin Hayes', '21.0', '12.5', '1.8', '45.2%', '14.7%', '67.0%', 'https://www.basketball-reference.com/req/202106291/images/headshots/hayesel01.jpg');
    -- (1,1,'', '', '', '', '%', '%', '%'),
    
    
    
    