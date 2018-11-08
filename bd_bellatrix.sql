-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Nov-2018 às 04:30
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_bellatrix`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comenta`
--

CREATE TABLE `comenta` (
  `fk_posts_Cod_post` int(11) DEFAULT NULL,
  `fk_usuario_Id` int(11) DEFAULT NULL,
  `data_com` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  `titulo_imagem` varchar(100) DEFAULT NULL,
  `caminho_imagem` blob,
  `Cod_imagem` int(11) NOT NULL,
  `descimagem` varchar(300) DEFAULT NULL,
  `fk_posts_Cod_post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`titulo_imagem`, `caminho_imagem`, `Cod_imagem`, `descimagem`, `fk_posts_Cod_post`) VALUES
('Galáxia de Andrômeda', NULL, 0, 'Imagem da galáxia de Andrômeda', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `Cod_post` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  `texto_post` varchar(8000) DEFAULT NULL,
  `fk_tema_post_id_tema` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`Cod_post`, `titulo`, `descricao`, `texto_post`, `fk_tema_post_id_tema`) VALUES
(0, 'SOL', 'Informações sobre o sol', 'O Sol (do latim sol, solis) é a estrela central do Sistema Solar. Todos os outros corpos do Sistema Solar, como planetas, planetas anões, asteroides, cometas e poeira, bem como todos os satélites associados a estes corpos, giram ao seu redor. Responsável por 99,86% da massa do Sistema Solar, o Sol possui uma massa 332 900 vezes maior que a da Terra, e um volume 1 300 000 vezes maior que o do nosso planeta. A distância da Terra ao Sol é cerca de 150 milhões de quilômetros ou 1 unidade astronômica (UA). Esta distância varia com o ano de um mínimo de 147,1 milhões de quilômetros (0,9833 UA) no perélio (ou periélio) a um máximo de 152,1 milhões de quilômetros (1,017 UA) no afélio, em torno de 4 de julho.[14] A luz solar demora aproximadamente 8 minutos e 18 segundos para chegar à Terra. Energia do Sol na forma de luz solar é armazenada em glicose por organismos vivos através da fotossíntese, processo do qual, direta ou indiretamente, dependem todos os seres vivos que habitam nosso planeta. A energia solar também é responsável pelos fenômenos meteorológicos e o clima na Terra. \r\nÉ composto primariamente de hidrogênio (74% de sua massa, ou 92% de seu volume) e hélio (24% da massa solar, 7% do volume solar), com traços de outros elementos, incluindo ferro, níquel, oxigênio, silício, enxofre, magnésio, néon, cálcio e crômio.[17] Possui a classe espectral de G2V: G2 indica que a estrela possui uma temperatura de superfície de aproximadamente 5 780 K, o que lhe confere uma cor branca (apesar de ser visto como amarelo no céu terrestre, o que se deve à dispersão dos raios na atmosfera); O V (5 em números romanos) na classe espectral indica que o Sol, como a maioria das estrelas, faz parte da sequência principal. Isto significa que o astro gera sua energia através da fusão de núcleos de hidrogênio para a formação de hélio. Existem mais de 100 milhões de estrelas da classe G2 na Via Láctea. Considerado anteriormente uma estrela pequena, acredita-se atualmente que o Sol seja mais brilhante do que 85% das estrelas da Via Láctea, sendo a maioria dessas anãs vermelhas. O espectro do Sol contém linhas espectrais de metais ionizados e neutros, bem como linhas de hidrogênio muito fracas. A coroa solar expande-se continuamente no espaço, criando o vento solar, uma corrente de partículas carregadas que estende-se até a heliopausa, a cerca de 100 UA do Sol. A bolha no meio interestelar formada pelo vento solar, a heliosfera, é a maior estrutura contínua do Sistema Solar.\r\nO Sol orbita em torno do centro da Via Láctea, atravessando no momento a Nuvem Interestelar Local de gás de alta temperatura, no interior do Braço de Órion da Via Láctea, entre os braços maiores Perseus e Sagitário. Das 50 estrelas mais próximas do Sistema Solar, num raio de até 17 anos-luz da Terra, o Sol é a quarta maior em massa. Diferentes valores de magnitude absoluta foram dados para o Sol, como, por exemplo, 4,85, e 4,81. O Sol orbita o centro da Via Láctea a uma distância de cerca de 24 a 26 mil anos-luz do centro galáctico, movendo-se geralmente na direção de Cygnus e completando uma órbita entre 225 a 250 milhões de anos (um ano galáctico). A estimativa mais recente e precisa da velocidade orbital do sol é da ordem de 251 km/s. Visto que a Via Láctea move-se na direção da constelação Hidra, com uma velocidade de 550 km/s, a velocidade do Sol relativa à radiação cósmica de fundo em micro-ondas é de 370 km/s, na direção da constelação da Taça.\r\n', 0),
(1, 'Cometa Halley', 'Breves informações sobre o cometa e sua composição', 'Cometa Halley, oficialmente designado 1P/Halley,é um cometa periódico, visível na Terra a cada 74-79 anos. O Halley é o único cometa de curto período que é regularmente visível a olho-nu da Terra e o único cometa a olho-nu a aparecer nos céus durante uma só geração. A última aparição dele foi em 1986 e seu retorno está marcado para 2061.O retorno do Halley ao Sistema Solar interior foi observado e registrado por observadores e astrônomos desde, pelo menos, 240 a.C.. Registros do Halley apareceram na China, Babilônia, crônicas da Europa Medieval, mas ninguém o reconheceu como sendo o retorno do mesmo objeto. Sua periodicidade foi determinada pela primeira vez em 1705, pelo astrônomo inglês Edmond Halley, cujo nome foi dado ao cometa. Em sua aparição de 1986, o Halley se tornou o primeiro cometa a ser observado em detalhes por uma espaçonave, fornecendo os primeiros dados da estrutura de seu núcleo, bem como o mecanismo da cabeleira e cauda.Essas observações confirmaram várias hipóteses sobre construção do cometa, em especial o modelo de Fred Whipple, de que os cometas são bolas de gelo sujas, que diz que cometas são compostos por uma mistura de gelos voláteis como os de água, dióxido de carbono e amônia, junto de poeira cósmica. Observações seguintes também reformulariam estas ideias. Hoje se sabe que a superfície do Halley é, em grande parte, composta por materiais não voláteis, poeirentos e que apenas uma pequena porção de sua composição é de gelo.', 1),
(2, 'Planeta Terra', 'Breve descricão sobre o nosso planeta Terra', 'A Terra é o terceiro planeta mais próximo do Sol, o mais denso e o quinto maior dos oito planetas do Sistema Solar. É também o maior dos quatro planetas telúricos. É por vezes designada como Mundo ou Planeta Azul. Lar de milhões de espécies de seres vivos,[13] incluindo os humanos, a Terra é o único corpo celeste onde é conhecida a existência de vida. O planeta formou-se há 4,56 bilhões de anos,[14][15][16][17] e a vida surgiu na sua superfície um bilhão de anos depois. Desde então, a biosfera terrestre alterou significativamente a atmosfera e outros fatores abióticos do planeta, permitindo a proliferação de organismos aeróbicos, bem como a formação de uma camada de ozônio, a qual, em conjunto com o campo magnético terrestre, bloqueia radiação solar prejudicial, permitindo a vida no planeta.[18] As propriedades físicas do planeta, bem como sua história geológica e órbita, permitiram que a vida persistisse durante este período. Acredita-se que a Terra poderá suportar vida durante pelo menos outros 500 milhões de anos.[19][20]\r\n\r\nA sua superfície exterior está dividida em vários segmentos rígidos, chamados placas tectônicas, que migram sobre a superfície terrestre ao longo de milhões de anos. Cerca de 71% da superfície da Terra está coberta por oceanos de água salgada, com o restante consistindo de continentes e ilhas, os quais contêm muitos lagos e outros corpos de água que contribuem para a hidrosfera. Não se conhece a existência de água no estado líquido em equilíbrio, necessária à manutenção da vida como a conhecemos, na superfície de qualquer outro planeta.[nota 5] Os polos geográficos da Terra encontram-se maioritariamente cobertos por mantos de gelo ou por banquisas. O interior da Terra permanece ativo, com um manto espesso e relativamente sólido, um núcleo externo líquido que gera um campo magnético, e um núcleo interno sólido, composto sobretudo por ferro.\r\n\r\nA Terra interage com outros objetos no espaço, em particular com o Sol e a Lua. No presente, a Terra orbita o Sol uma vez por cada 366,26 rotações sobre o seu próprio eixo, o que equivale a 365,26 dias solares ou um ano sideral.[nota 6] O eixo de rotação da Terra possui uma inclinação de 23,4° em relação à perpendicular ao seu plano orbital,[21] produzindo variações sazonais na superfície do planeta com período igual a um ano tropical (365,24 dias solares).[22] A Lua é o único satélite natural conhecido da Terra, tendo começado a orbitá-la há 4,53 bilhões de anos. É responsável pelas marés, estabiliza a inclinação axial da Terra e abranda gradualmente a rotação do planeta. Entre aproximadamente 4,1 e 3,8 bilhões de anos atrás, durante o intenso bombardeio tardio, impactos de asteroides causaram mudanças significativas na superfície terrestre.\r\n\r\nOs recursos minerais da Terra em conjunto com os produtos da biosfera, fornecem recursos que são utilizados para suportar uma população humana global. Estes habitantes da Terra estão agrupados em cerca de 200 estados soberanos, que interagem entre si por meio da diplomacia, viagens, comércio e ação militar. As culturas humanas desenvolveram várias crenças sobre o planeta, incluindo a sua personificação em uma deidade, a crença numa Terra plana, ou em que a Terra é o centro do universo, e uma perspectiva moderna do mundo como um ambiente integrado que requer proteção.', 2),
(3, 'Satélites', 'O que são satélites?', 'Um satélite natural é um corpo celeste que orbita um planeta ou outro corpo maior. Dessa forma, o termo satélite natural poderia se referir a planetas anões orbitando a uma estrela, ou até uma galáxia anã orbitando uma galáxia maior. Porém, ele é normalmente um sinônimo de lua, usado para identificar satélites não artificiais de planetas, planetas anões ou corpos menores. Por exemplo, a Lua é o satélite natural da Terra.\r\nEm setembro de 2011, havia 375 objetos no Sistema Solar classificados como luas. Dentre esses, 169 orbitam planetas e 206 orbitam planetas anões e corpos menores.\r\nPorém, alguns são maiores que alguns planetas principais, como Ganímedes e Titã, satélites de Júpiter e Saturno, respectivamente, que são maiores que Mercúrio. Assim sendo estes satélites, se não orbitassem planetas, seriam eles mesmos planetas. Apesar disso, existem outros satélites que são muito menores e têm menos de 5 km de diâmetro, como vários satélites do planeta Júpiter.\r\nCaronte, o satélite natural de Plutão tem mais ou menos metade do diâmetro deste último, e visto que o primeiro não gira exatamente em torno do segundo (visto que o baricentrodo sistema plutoniano localiza-se acima da superfície plutoniana), o que leva certos astrônomos a pensarem no conjunto como um planeta duplo. De facto, o próprio sistema Terra-Lua (embora o baricentro do sistema esteja dentro da Terra, e a Lua tenha menos de um quarto o diâmetro terrestre) é, também considerado por alguns astrônomos como um planeta duplo.', 3),
(4, 'Galáxia de Andrômeda', 'Informações sobre a galáxia de Andrômeda', 'A galáxia de Andrômeda (Messier 31, NGC 224) é uma galáxia espiral localizada a cerca de 2,54 milhões de anos-luz de distância da Terra, na direção da constelação de Andrômeda. É a galáxia espiral mais próxima da Via Láctea e seu nome é derivado da constelação onde está situada, que, por sua vez, tem seu nome derivado da princesa mitológica Andrômeda. É a mais larga galáxia do Grupo Local, que também contém nossa galáxia, a Via Láctea, a galáxia do Triângulo e aproximadamente 30 outras menores. O levantamento feito pelo Telescópio Espacial Spitzer em 2006 determinou que sua massa é de aproximadamente ~0.8-1.512 massas solares enquanto a Via Láctea tem uma massa estimada em 8,511 massas solares . Sua população estelar atinge aproximadamente 1 trilhão de estrelas e a Via Láctea conta com algo entre 200 a 400 bilhões de estrelas. O recente trabalho de Prajwal R. Kafle, Sanjib Sharma, Geraint F. Lewis, Aaron S. G. Robotham, Simon P. Driver The Need for Speed: Escape velocity and dynamical mass measurements of the Andromeda galaxy indica que a massa de Andrômeda possa ser um pouco menor que a da Via Láctea, Neste estudo chega-se aos seguintes valores: Via Lactea: ~1 x 10^12 MSol e M31: - 0.8 +- 0,1 x 10^12 MSol.\r\nCom uma magnitude aparente 3,4, é um dos objetos astronômicos mais brilhantes do catálogo de objetos do céu profundo do astrônomo francês Charles Messier, visível a olho nu na ausência da Lua. Possui entre 180 e 220 mil anos-luz de diâmetro e uma magnitude absoluta de -21,4.', 4),
(5, 'Nebulosa', 'O que é uma nebulosa', 'As nebulosas são nuvens de poeira, hidrogênio, hélio e plasma. Originalmente, nebulosa era o nome de qualquer corpo celeste difuso, incluindo galáxias além da Via Láctea. A Galáxia de Andrômeda, por exemplo, era atribuída como Nebulosa de Andrômeda (e galáxias espirais em geral como nebulosas espirais) antes da verdadeira natureza das galáxias serem confirmadas no início do século XX por Vesto Melvin Slipher, Edwin Hubble e outros.\r\nA maioria das nebulosas são de tamanho vasto, abrangendo tamanhos de até centenas de anos luz de diâmetro. Embora mais densas que o espaço que as acercam, a maioria das nebulosas são muito menos densas que qualquer vácuo criado em ambiente terrestre - uma nuvem nebular de tamanho da Terra pesaria apenas alguns quilogramas.\r\nNebulosas são muitas vezes regiões de formações estrelares, como a Nebulosa da Águia. Essa nebulosa é retratada em uma das imagens mais famosas da NASA, os Pilares da Criação. Nessas regiões a formação de gás, poeira e outros materiais amontoam-se parar formar massas maiores, nas quais atraem mais massas, e eventualmente se tornarão maciças o suficiente para se tornarem estrelas. Os materiais remanescentes são acreditados formarem planetas, e outros objetos de sistemas planetários.', 5),
(6, 'História da Astronomia', 'Resumo sobre a história da astronomia', 'A história da astronomia envolve um período de tempo tão antigo quanto a origem do homem.A astronomia é a mais antiga das ciências naturais. Descobertas arqueológicas têm fornecido evidências de observações astronômicas entre os povos pré-históricos. Desde a antiguidade, o céu vem sendo usado como mapa, calendário ou relógio. O desejo de conhecimento sempre incentivou o estudo da astronomia, seja por razões religiosas, seja para a predição de eventos. No início, a astronomia coincidiu com a criação da astrologia, representando tanto um instrumento de conhecimento quanto de poder. Só depois do advento do método científico, a ciência passou a fazer uma clara separação disciplinar entre astronomia e astrologia.\r\nDesde os tempos antigos, os homens pesquisaram e aprenderam uma grande quantidade de dados sobre o universo simplesmente observando o céu. Os primeiros astrônomos faziam uso ou de seus pontos de vista ou de alguma ferramenta rudimentar a fim de calcular a posição das estrelas. A antiga compreensão da mecânica celeste contribuiu para a criação de uma agenda ligada às estações do ano e da lua, trazendo consequências positivas para a agricultura. O conhecimento de antemão da transição de uma estação para outra foi de fundamental importância para a capacidade de sobrevivência do homem antigo. Por isso, a investigação do céu sempre constituiu um importante elo entre o céu e a terra, entre o homem e Deus (ou entre o homem e os deuses).Com a invenção do telescópio, o homem conseguiu cavar mais fundo na dinâmica celestial, abrindo uma janela mais ampla sobre o universo e suas regras. O desenvolvimento técnico aliada a exploração do espaço procurará expandir ainda mais o campo de investigação e conhecimento do cosmos.', 6),
(7, 'Sistema Solar', 'Tudo sobre o nosso Sistema Solar', 'O Sistema Solar compreende o conjunto constituído pelo Sol e todos os corpos celestes que estão sob seu domínio gravitacional. A estrela central, maior componente do sistema, respondendo por mais de 99,85% da massa total, gera sua energia através da fusão de hidrogênio em hélio, dois de seus principais constituintes. Os quatro planetas mais próximos do Sol (Mercúrio, Vênus, Terra e Marte) possuem em comum uma crosta sólida e rochosa, razão pela qual se classificam no grupo dos planetas telúricos, ou rochosos. Mais afastados, os quatro gigantes gasosos, Júpiter, Saturno, Urano e Netuno, são os componentes de maior massa do sistema logo após o próprio Sol. Dos cinco planetas anões, Ceres é o que se localiza mais próximo do centro do Sistema Solar, enquanto todos os outros, Plutão, Haumea, Makemake e Éris, se encontram além da órbita de Netuno.\r\nPermeando praticamente toda a extensão do Sistema Solar, existem incontáveis objetos que constituem a classe dos corpos menores. Os asteroides, essencialmente rochosos, concentram-se numa faixa entre as órbitas de Marte e Júpiter que se assemelha a um cinturão. Além da órbita do último planeta, a temperatura é suficientemente baixa para permitir a existência de fragmentos de gelo, que se aglomeram sobretudo nas regiões do Cinturão de Kuiper, Disco disperso e na Nuvem de Oort; esporadicamente são desviados para o interior do sistema onde, pela ação do calor do Sol, se transformam em cometas. Muitos corpos, por sua vez, possuem força gravitacional suficiente para manter orbitando em torno de si objetos menores, os satélites naturais, com as mais variadas formas e dimensões. Os planetas gigantes apresentam, ainda, sistemas de anéis planetários, uma faixa composta por minúsculas partículas de gelo e poeira.\r\nO Sistema Solar, de acordo com a teoria mais aceita hoje em dia, teve origem a partir de uma nuvem molecular que, por alguma perturbação gravitacional, entrou em colapso e formou a estrela central, enquanto seus remanescentes geraram os demais corpos. Em sua configuração atual, todos os componentes descrevem órbitas praticamente elípticas ao redor do Sol, constituindo um sistema dinâmico onde os corpos estão em mútua interação mediada sobretudo pela força gravitacional. A sua estrutura tem sido objeto de estudos desde a antiguidade, mas somente há cinco séculos a humanidade reconheceu o fato de que o Sol, e não a Terra, constitui o centro do movimento planetário. Desde então, a evolução dos equipamentos de pesquisa, como telescópios, possibilitou uma maior compreensão do sistema. Entretanto, detalhes sem precedentes foram obtidos somente após o envio de sondas espaciais a todos os planetas, que retornam imagens e dados com uma precisão nunca antes alcançada.', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tema_post`
--

CREATE TABLE `tema_post` (
  `desc_tema` varchar(300) DEFAULT NULL,
  `id_tema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tema_post`
--

INSERT INTO `tema_post` (`desc_tema`, `id_tema`) VALUES
('Estrelas', 0),
('Cometas', 1),
('Planetas', 2),
('Satélites', 3),
('Galáxias', 4),
('Nebulosas', 5),
('História', 6),
('Sistema Solar', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `Login_usu` varchar(100) DEFAULT NULL,
  `Senha_usu` varchar(100) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`Login_usu`, `Senha_usu`, `Email`, `Nome`, `Id`) VALUES
('gaby', 'dwcwc', 'ev@gmail.com', 'efvwd', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comenta`
--
ALTER TABLE `comenta`
  ADD KEY `FK_comenta_1` (`fk_posts_Cod_post`),
  ADD KEY `FK_comenta_2` (`fk_usuario_Id`);

--
-- Indexes for table `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`Cod_imagem`),
  ADD KEY `FK_imagens_2` (`fk_posts_Cod_post`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Cod_post`),
  ADD KEY `FK_posts_2` (`fk_tema_post_id_tema`);

--
-- Indexes for table `tema_post`
--
ALTER TABLE `tema_post`
  ADD PRIMARY KEY (`id_tema`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comenta`
--
ALTER TABLE `comenta`
  ADD CONSTRAINT `FK_comenta_1` FOREIGN KEY (`fk_posts_Cod_post`) REFERENCES `posts` (`Cod_post`),
  ADD CONSTRAINT `FK_comenta_2` FOREIGN KEY (`fk_usuario_Id`) REFERENCES `usuario` (`Id`);

--
-- Limitadores para a tabela `imagens`
--
ALTER TABLE `imagens`
  ADD CONSTRAINT `FK_imagens_2` FOREIGN KEY (`fk_posts_Cod_post`) REFERENCES `posts` (`Cod_post`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_posts_2` FOREIGN KEY (`fk_tema_post_id_tema`) REFERENCES `tema_post` (`id_tema`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
