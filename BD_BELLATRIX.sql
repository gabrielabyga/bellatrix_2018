-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 09-Ago-2018 às 16:39
-- Versão do servidor: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BD_BELLATRIX`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Imagens`
--

CREATE TABLE `Imagens` (
  `Cod_imagem` int(11) NOT NULL,
  `descimagem` varchar(300) DEFAULT NULL,
  `titulo_imagem` varchar(100) DEFAULT NULL,
  `caminho_imagem` varchar(150) DEFAULT NULL,
  `Cod_post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Imagens`
--

INSERT INTO `Imagens` (`Cod_imagem`, `descimagem`, `titulo_imagem`, `caminho_imagem`, `Cod_post`) VALUES
(1, 'Imagem do buraco negro', 'Burado Negro', 'buraco_neg.jpg', 3),
(2, 'Imagem da constelação de Órion', 'Constelação de Órion', 'const(orion).jpg', 2),
(3, 'Imagem da estrela da constelação de Órion', 'Bellatrix', 'estre(bellatrix).jpg', 5),
(4, 'Imagem da galáxia de andrômeda', 'Galáxia de Andrômeda', 'galax(androm).jpg', 6),
(5, 'Imagem do planeta Terra', 'Planeta Terra', 'planet(terra).jpg', 1),
(6, 'Imagem de um cometa', 'Cometa', 'comet.jpg', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Posts`
--

CREATE TABLE `Posts` (
  `Cod_post` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  `texto_post` varchar(8000) DEFAULT NULL,
  `Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Posts`
--

INSERT INTO `Posts` (`Cod_post`, `titulo`, `descricao`, `texto_post`, `Id`) VALUES
(1, 'Planeta Terra', 'Encher Linguiça', 'O planeta Terra é um sistema formado por milhões de organismo vivos, que possui um detalhado processo para a manutenção da vida. A existência da vida é uma das características que a diferencia de outros planetas do sistema solar, sendo o terceiro mais próximo do Sol, dos oito planetas que o compõem.\r\n\r\nFonte: http://planeta-terra.info/', 1),
(2, 'Constelação de Órion', 'Encher linguiça 1', 'Órion, Oríon ou Orion é uma das oitenta e oito constelações modernas. Está localizada no equador celeste e, por este motivo, é visível em praticamente todas as regiões habitadas da Terra. A época mais favorável para sua observação principalmente nas noites de verão no hemisfério sul, em dezembro e janeiro.\r\nA constelação de Órion é notável pela presença de muitas estrelas brilhantes, que formam figuras de fácil reconhecimento. A gigante azul Rígel e a gigante vermelha Betelgeuse apresentam maior brilho e, juntamente com Bellatrix e Saiph compõem o quadrilátero principal. Em seu centro figuram Alnitak, Alnilam e Mintaka, três estrelas de brilho similar alinhadas que constituem o Cinturão de Órion, asterismo conhecido popularmente como Três Marias.\r\n\r\nÓrion também possui numerosos objetos do céu profundo, sobretudo nebulosas. A mais notável é a Nebulosa de Órion, única visível a olho nu que, a cerca de 1 500 anos-luz, é uma das regiões de formação estelar mais próximas. A constelação também abriga outras nebulosas emblemáticas, incluindo a Nebulosa escura Cabeça de Cavalo e a Nebulosa da Chama, além de muitas outras nuvens que compõem o Complexo de Nuvens Moleculares de Órion. De fato, muitas das estrelas gigantes azuis originaram-se dessas nuvens moleculares e hoje iluminam o material remanescente.\r\nA constelação abriga o radiante de uma chuva de meteoros denominada Oriônidas, cujo pico acontece no final de outubro quando a Terra cruza com os fragmentos deixados pelo cometa Halley.\r\n', 8),
(3, 'Buraco Negro', 'Encher Linguiça 2', 'De forma simplificada, buraco negro é uma região do espaço que possui uma quantidade tão grande de massa concentrada que nada consegue escapar da atração de sua força de gravidade, nem mesmo a luz, e é por isso que são chamados de “buracos negros”.\r\n\r\nAté hoje a melhor teoria para explicar este tipo de fenômeno é a Teoria Geral da Relatividade, formulada por Albert Einstein. Mas, para entender melhor do que se trata um buraco negro é preciso entender alguns conceitos.\r\n\r\nSegundo a teoria de Einstein, a força da gravidade seria uma manifestação da deformação no espaço-tempo causada pela massa dos corpos celestes, como os planetas ou estrelas. Essa deformação seria maior ou menor de acordo com a massa ou a densidade do corpo. Portanto, quanto maior a massa do corpo, maior a deformação e, por sua vez, maior a força de gravidade dele. Consequentemente, maior é a velocidade de escape, força mínima que deve ser empregada, para que um objeto possa vencer a gravidade deste corpo. Por exemplo, para que um foguete saia da atmosfera terrestre para o espaço ele precisa de uma força de escape de 40.320 km/h. Em Júpiter, essa força teria de ser 214.200 km/h. Essa diferença muito grande, é porque sua massa é muito maior que a da Terra.\r\n\r\nÉ isso que acontece nos buracos negros. Há uma concentração de massa tão grande em um ponto tão infinitamente pequeno que a densidade é suficiente para causar tal deformação no espaço-tempo que a velocidade de escape neste local é maior que a da luz. Por isso que nem mesmo a luz consegue escapar de um buraco negro. E, já que nada consegue se mover mais rápido que a velocidade da luz, nada pode escapar de um buraco negro.\r\n\r\nEsses tais buracos negros seriam estrelas em seu último estágio de evolução, quando, depois de consumir todo seu combustível, a estrela com massa maior que 3 massas solares, se transformam em uma supernova com um “caroço” no centro. Se a massa deste caroço, que pode ou não se formar, for maior que 2 massas solares ele cai sobre si mesmo, transformando-se em um buraco negro.\r\n\r\nÀs vezes acontece da estrela evoluir no que chamamos de “sistema binário fechado” quando duas estrelas ficam muito próximas e há transferência de matéria de uma para outra, podendo fazer com que uma delas acumule matéria em excesso provocando sua explosão em uma supernova. Nestes casos, o mais provável é que ela evolua para uma estrela de nêutrons, quando elétrons e prótons se fundem em nêutrons. Mas, acontece que em alguns sistemas a concentração de massa é muito grande e ocorre a formação de um buraco negro que continua “sugando” a massa daquela outra estrela maior.\r\n\r\nFonte: https://www.infoescola.com/astronomia/buraco-negro/', 7),
(4, 'Cometa', 'Enxer linguiça 3', 'Antigamente, os cometas despertavam medo nas pessoas que viam, subitamente, o céu ser riscado por algo que se movia bem rápido. Hoje, sabemos que os cometas são apenas corpos bastante irregulares, pequenos e frágeis. Alguns são visíveis aqui na Terra de tempos em tempos, ou seja, tem uma periodicidade. Suas órbitas são altamente elípticas e, por conta disso, quando chegam perto do Sol, são lançados para o espaço profundo, geralmente para muito além de Plutão.\r\n\r\nMais especificamente, cometas são “pedras de gelo sujo”: o gelo é formado por material volátil, que passa do estado sólido diretamente para o gasoso, e a “sujeira” é formada por poeira e pedras dos mais variados tamanhos.\r\n\r\nAs partes de um cometa são:\r\n\r\nCabeleira ou Coma: aparece como uma nebulosidade sobre o núcleo, como se fosse a capa do núcleo do cometa ou atmosfera. É a origem da cauda do cometa e contém gases simples a base de hidrogênio e oxigênio.\r\nCauda: a cauda forma-se da ação dos ventos solares no coma. Quanto mais perto do Sol, maior é a ação dos ventos solares e maior é a cauda do cometa.\r\nNúcleo: tem alguns quilômetros de diâmetro e todos os fenômenos que ocorrem em um cometa tem origem no núcleo. Ao aproximar-se muito do Sol, perde matéria que se converte em coma que, por sua vez, converte-se em cauda.\r\nA vida média de um cometa não ultrapassa os 10 milhões de anos. Antes de serem capturados pelo campo gravitacional do Sol e tornarem-se cometas, são apenas núcleos congelados vagando pelo espaço. Podemos saber sobre a periodicidade de um cometa através de sua órbita:\r\n\r\nParabólica ou hiperbólica: aproximam-se apenas uma vez do Sol e retornam para o espaço profundo. Não são periódicos;\r\nElíptica: são cometas periódicos. Orbita provocada pela influência dos planetas, principalmente Júpiter e Saturno.\r\nQuando está longe do Sol, o seu material está sólido e congelado. Ao chegar perto do Sol, forma-se a cauda e o coma. Conforme ele absorve a luz ultravioleta, processos químicos liberam hidrogênio, que escapa da gravidade do cometa e forma uma espécie de envelope de hidrogênio. Tal processo não pode ser observado da Terra, mas vários telescópios espaciais foram capazes de detectar.\r\n\r\nHá vários cometas registrados por agências como a Agência Espacial Americana (Nasa). O mais famoso de todos, o cometa Halley, já é um velho conhecido nosso. Ele foi descoberto em 1705, mas astrônomos acreditam que desde muito antes a humanidade já o via no céu. A sua periodicidade é a cada 75 anos e sua última aparição foi em 9 de fevereiro de 1986; sua próxima visita está prevista para 28 de julho de 2061. A sua periodicidade é considerada intermediária e ele é um comenta muito brilhante. O seu descobridor foi Edmond Halley.\r\n\r\nO estudo dos cometas começou com os cometas de curto período (menos de 200 anos) e que estão em planos próximos aos planos das órbitas dos planetas. Em 1950, Jan Hendrik Oort (1900-1992) propôs um modelo que dizia que uma imensa ‘nuvem’ de núcleos cometários estaria orbitando o Sol e esses núcleos teriam diversos tamanhos. Quando perturbados, esses objetos entrariam em contato com o meio do Sistema Solar. Essa nuvem hoje é conhecida como Nuvem de Oort.\r\n\r\nEm 1951, Gerard Peter Kuiper (1905-1973) propôs que os cometas de curto período são oriundos de uma região plana com início logo após a órbita de Netuno. Hoje conhecemos essa região como Cinturão de Kuiper, que é constituído de pelo menos 10.000 objetos. Até hoje, o estudo de Kuiper é considerado aceito para os cometas de curto período.\r\n\r\nFonte: https://www.infoescola.com/astronomia/cometa/', 4),
(5, 'Estrela Bellatrix', 'Encher linguiça 4 ', 'Bellatrix, uma estrela gigante azul que pode ser observada na constelação de Órion (ou Orionte). Vista a partir da Terra, esta é a terceira estrela mais brilhante da sua constelação. Bellatrix é também designada por Gamma Orionis.\r\n\r\nA constelação de Órion tem diversos objetos celestes que despertam bastante interesse. É o caso das estrelas Rigel e Betelgeuse, das “Três Marias“, da nebulosa M42, entre outros. Bellatrix é mais uma estrela interessante da constelação de Órion.\r\n\r\nBellatrix apresenta uma magnitude aparente de +1,64 sendo por isso bem visível a olho nu. Bellatrix situa-se a aproximadamente 250 anos-luz de nós.\r\n\r\nEsta é uma estrela gigante azul, e como tal trata-se de uma estrela quente. A temperatura da camada externa de Bellatrix ronda os 22.000 K. Para efeitos de comparação, a temperatura na superfície do nosso Sol ronda os 5.800K.\r\n\r\nBellatrix é uma estrela bastante brilhante, possuindo uma luminosidade de aproximadamente 6.400 vezes superior à luminosidade do Sol.\r\n\r\nEsta estrela possui um raio de cerca de 6 vezes o raio do Sol, e uma massa equivalente a cerca de 8,4 vezes a massa solar.\r\n\r\nFonte: http://www.siteastronomia.com/estrela-bellatrix-constelacao-de-orion', 3),
(6, 'Galáxia de Andrômeda', 'Encher linguiça 5 ', 'Formadas por muitas estrelas, poeira cósmica e outros objetos que interagem gravitacionalmente, as Galáxias são agrupamentos desses corpos no universo. A Galáxia de Andrômeda possui formato espiral e sua localização é de 2,54 milhões de anos-luz do Planeta Terra, sua posição é próxima da Constelação de Andrômeda. Segundos pesquisadores e cientistas, é tida como a mais próxima da Via Láctea.\r\n\r\nÉ assim chamada, de Andrômeda, devido a proximidade da Constelação de Andrômeda, cujo termo é oriundo da Princesa da mitologia Andrômeda, filha de Cefeu (Rei da Etiópia e da Cassiopéia). Sua extensão é a maior de todas as outras galáxias do chamado Grupo Local (composto pela Galáxia do Triângulo, Via Láctea e mais 30 de pequena dimensão). A massa da Galáxia de Andrômeda é praticamente a mesma da nossa, possuindo  7.1×1011  massas solares (massa solar = massa do nosso Sol, o que equivale a 332.946 Terras).\r\n\r\nÉ um dos astros mais brilhantes e chamativos, com uma magnitude aparente de 3,4, registrado pelo astrônomo francês Charles Messier. Possui ainda de 180 a 220 mil anos-luz de diâmetro. Dentre as principais características, podemos citar que seu corpo celeste é muito estudado e possibilita enormes descobertas científicas, como a estrutura espiral e os conglomerados abertos, a matéria interestelar, o núcleo galáctico, a poeira interestelar entre outras formas impossíveis de serem detectadas na nossa Galáxia.\r\n\r\nA Galáxia de Andrômeda foi catalogada como M31 no catálogo Messier, e no NGC 224 (Novo Catálogo Geral), em Outubro do ano de 1786, por John Herschel.\r\n\r\nCom um diâmetro de 250 mil anos-luz, tem o dobro do tamanho da Via Láctea.\r\n\r\nMuitos estudiosos relatam que a Galáxia de Andrômeda terá seu fim próximo, pois com o passar dos anos a Via Láctea e a Galáxia de Andrômeda se aproximam e possivelmente, entrarão em rota de colisão. Esta previsão é prevista para acontecer na mesma época do fim do Sol, em aproximadamente 4 bilhões de anos.\r\n\r\nFonte: https://www.infoescola.com/astronomia/andromeda-galaxia/', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tema_post`
--

CREATE TABLE `tema_post` (
  `id_tema` int(11) NOT NULL,
  `desc_tema` varchar(300) DEFAULT NULL,
  `Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tema_post`
--

INSERT INTO `tema_post` (`id_tema`, `desc_tema`, `Id`) VALUES
(1, 'Planetas', NULL),
(2, 'Galáxias', NULL),
(3, 'Estrelas', NULL),
(4, 'Cometas', NULL),
(5, 'Meteóros', NULL),
(6, 'Satélites', NULL),
(7, 'Buraco Negro', NULL),
(8, 'Constelações', NULL),
(9, 'História da Astronomia', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `Nome` varchar(100) DEFAULT NULL,
  `Login_usu` varchar(100) NOT NULL,
  `Senha_usu` varchar(100) NOT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`Nome`, `Login_usu`, `Senha_usu`, `Email`, `Id`) VALUES
('Hayley Gray', 'Hayley Gray', 'mli1J2&X/2rZ5L', 'gravida@pellentesque.com', 1),
('Deshawn Quinn', 'Deshawn Quinn', 'f633mfdj', 'orci@lacus.com', 2),
('Nettie Timms', 'Nettie Timms', '813geuko', 'arcu@vestibulum.com', 3),
('Alpha Osborne', 'Alpha Osborne', '94bc6rew', 'in@consequat.com', 4),
('Launa Kent', 'Launa Kent', '9d91mhkr', 'nullam@fringilla.com', 5),
('Vernia Townsend', 'Vernia Townsend', '4y45deve', 'pretium@laoreet.com', 6),
('Loyd Hackett', 'Loyd Hackett', '11qseu3w', 'enim@maecenas.com', 7),
('Migdalia Lyons', 'Migdalia Lyons', 't6e10psp', 'natoque@diam.com', 8),
('Rafael Hagan', 'Rafael Hagan', '043vbeza', 'aliquam@et.com', 9),
('Sharla Andrews', 'Sharla Andrews', '023giggx', 'feugiat@eget.com', 10),
('Lorene Robbins', 'Lorene Robbins', '4f59ghma', 'non@tortor.com', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Imagens`
--
ALTER TABLE `Imagens`
  ADD PRIMARY KEY (`Cod_imagem`),
  ADD KEY `Cod_post` (`Cod_post`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`Cod_post`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `tema_post`
--
ALTER TABLE `tema_post`
  ADD PRIMARY KEY (`id_tema`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Imagens`
--
ALTER TABLE `Imagens`
  MODIFY `Cod_imagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `Cod_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tema_post`
--
ALTER TABLE `tema_post`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `Imagens`
--
ALTER TABLE `Imagens`
  ADD CONSTRAINT `Imagens_ibfk_1` FOREIGN KEY (`Cod_post`) REFERENCES `Posts` (`Cod_post`);

--
-- Limitadores para a tabela `Posts`
--
ALTER TABLE `Posts`
  ADD CONSTRAINT `Posts_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `usuario` (`Id`);

--
-- Limitadores para a tabela `tema_post`
--
ALTER TABLE `tema_post`
  ADD CONSTRAINT `tema_post_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `usuario` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
