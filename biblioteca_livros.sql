-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `id_autores` int NOT NULL,
  `id_categorias` int NOT NULL,
  `id_editoras` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_autores` (`id_autores`),
  KEY `id_categorias` (`id_categorias`),
  KEY `id_editoras` (`id_editoras`),
  CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`id_autores`) REFERENCES `autores` (`id`),
  CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`id_categorias`) REFERENCES `categorias` (`id`),
  CONSTRAINT `livros_ibfk_3` FOREIGN KEY (`id_editoras`) REFERENCES `editoras` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'Vinte mil léguas submarinas','Uma jornada pelo fundo do mar a bordo do submersível Nautilus, comandado pelo enigmático Capitão Nemo.',1,1,1),(2,'A Volta ao Mundo em 80 Dias','A corrida contra o tempo de Phileas Fogg para cruzar o globo e vencer uma ousada aposta.',1,1,1),(3,'Um Estudo em Vermelho',' A primeira aventura de Sherlock Holmes, onde ele conhece o Dr. Watson e resolve um mistério com pistas de sangue.',2,2,2),(4,'O Cão dos Baskerville',' Holmes investiga uma terrível maldição familiar que envolve um suposto cão fantasmagórico nos pântanos ingleses.',2,2,2),(5,'Não Fale com Estranhos','Um homem descobre um segredo sombrio sobre sua esposa através de um estranho, desencadeando um pesadelo de mentiras.',3,3,3),(6,'O Inocente','Um ex-presidiário tenta reconstruir a vida, mas uma ligação misteriosa no celular da esposa o joga em uma trama de assassinatos.',3,3,3),(7,'It: A Coisa','Um grupo de amigos de infância se reúne anos depois para enfrentar uma entidade maligna que assume a forma de um palhaço.',4,4,4),(8,'O Iluminado','• Um escritor assume o cargo de zelador de inverno em um hotel isolado, onde forças sobrenaturais e a loucura o consomem.\n',4,4,4),(9,'O Duque e Eu','Um falso namoro entre Daphne Bridgerton e o Duque de Hastings se transforma em um desejo real na alta sociedade londrina.',5,5,5),(10,'O Visconde Que Me Amava','O libertino Anthony Bridgerton decide se casar, mas precisa superar a resistência da irmã protetora de sua pretendente.',5,5,5),(11,'O Hobbit','Bilbo Bolseiro deixa o conforto de sua toca para ajudar um grupo de anões a recuperar um tesouro protegido por um dragão.',6,6,6),(12,'O Senhor dos Anéis: A Sociedade do Anel','• O jovem Frodo Bolseiro inicia uma jornada perigosa para destruir o Anel de Sauron antes que o mal domine a Terra-média.\n',6,6,6),(13,'Fundação','Um cientista prevê a queda de um império galáctico e cria um plano milenar para preservar o conhecimento da humanidade.',7,7,7),(14,'Eu, Robô','Uma coletânea de contos que analisa a evolução da inteligência artificial através do impacto das Três Leis da Robótica.',7,7,7),(15,'Steve Jobs','A história detalhada do gênio temperamental que revolucionou o mundo da tecnologia, do design e do consumo moderno.',8,8,8),(16,'Elon Musk',' O retrato íntimo do bilionário excêntrico que lidera indústrias de veículos elétricos, exploração espacial e inteligência artificial.',8,8,8),(17,'Cristianismo Puro e Simples','Uma explicação racional e acessível sobre as crenças fundamentais que unem os seguidores da fé cristã.',9,9,9),(18,'Cartas de um Diabo a seu Aprendiz',' Uma sátira espiritual em forma de cartas onde um demônio veterano ensina seu sobrinho a corromper um ser humano.',9,9,9),(19,'Como Fazer Amigos e Influenciar Pessoas','O guia clássico sobre habilidades sociais, empatia e técnicas de comunicação eficaz para obter o sucesso.',10,10,10),(20,'Como Evitar Preocupações e Começar a Viver','Fórmulas práticas para eliminar a ansiedade do dia a dia e cultivar uma atitude mental focada na paz.',10,10,10),(21,'Português Contemporâneo: Diálogo, Reflexão e Uso','• Material de Ensino Médio focado no aprendizado prático da língua por meio de textos, mídias e gramática aplicada.',11,11,11),(22,'Gramática Reflexiva','Livro que ensina as regras da língua portuguesa integradas ao contexto, estimulando o raciocínio em vez da memorização.',11,11,11);
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-09  6:37:00
