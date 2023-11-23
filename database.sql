-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/11/2023 às 02:56
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `database`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `depoimentos`
--

CREATE TABLE `depoimentos` (
  `id_depoimento` int(11) NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idade` int(2) NOT NULL,
  `depoimento` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `depoimentos`
--

INSERT INTO `depoimentos` (`id_depoimento`, `nome`, `idade`, `depoimento`) VALUES
(1, 'Maria Silva', 32, 'O curso da \'Traços e Cores\' mudou minha vida. Desde criança, sonhava em ser uma artista, mas sempre achei que não tinha talento. No entanto, após ingressar no curso, descobri minha paixão e confiança para desenhar. Os instrutores são incríveis, a abordagem amigável e inclusiva me fez sentir à vontade desde o início. Hoje, estou criando obras de arte que nunca imaginei serem possíveis. Sou profundamente grata por essa experiência transformadora.'),
(2, 'Pedro Santos', 17, 'Os cursos online da \'Traços e Cores\' são simplesmente incríveis. Como um jovem apaixonado por desenho, eu estava em busca de orientação e aprimoramento. Os recursos on-line oferecidos pela empresa são extremamente acessíveis e informativos. Aprendi técnicas avançadas e aprimorei minhas habilidades de maneira significativa. Agora, estou confiante o suficiente para compartilhar meu trabalho com o mundo e sonhar em me tornar um artista profissional. Obrigado, \'Traços e Cores\', por tornar isso possível.'),
(3, 'Ana Rodrigues', 45, 'Fui aluna da \'Traços e Cores\' por anos e posso afirmar que a experiência foi incrível. Os cursos para adultos me proporcionaram um refúgio criativo, onde pude me desconectar do estresse do dia a dia e me dedicar à arte. Os instrutores são talentosos e pacientes, e a atmosfera da classe é acolhedora. Além disso, as aulas on-line me permitiram continuar meu aprendizado de forma flexível. Este é um lugar onde todos são incentivados a explorar sua criatividade, independentemente da idade. Recomendo fortemente a \'Traços e Cores\' a todos os amantes da arte.'),
(4, 'Fernanda Costa', 28, 'Ingressar nos cursos da \'Traços e Cores\' foi uma das melhores decisões que já tomei. Como alguém que sempre desejou expressar sua criatividade por meio do desenho, mas nunca soube por onde começar, os cursos desta empresa foram um verdadeiro divisor de águas para mim. Os instrutores são apaixonados e dedicados, e o ambiente de aprendizado é estimulante. Aprendi não apenas a técnica, mas também a confiança para criar arte que realmente me orgulha. Minha jornada como artista está apenas começando, e a \'Traços e Cores\' é a melhor parceira nessa jornada.'),
(5, 'Carlos Oliveira', 50, 'Nunca é tarde para seguir uma paixão, e os cursos da \'Traços e Cores\' provaram isso para mim. Aos 50 anos, decidi finalmente me dedicar ao desenho, e a empresa me proporcionou uma experiência incrível. Os instrutores entendem as necessidades dos alunos mais maduros e me ajudaram a desenvolver minhas habilidades desde o básico até técnicas mais avançadas. A paciência e o apoio que recebi foram inestimáveis. Agora, estou criando obras de arte que nunca imaginei que fosse capaz. Recomendo a \'Traços e Cores\' a todos que desejam explorar seu potencial artístico, independentemente da idade.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id_msg` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mensagem` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `orçamento`
--

CREATE TABLE `orçamento` (
  `id_orçamento` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `endereço` varchar(80) NOT NULL,
  `complemento` varchar(20) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `data_inscrição` date NOT NULL,
  `observações` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  ADD PRIMARY KEY (`id_depoimento`);

--
-- Índices de tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id_msg`);

--
-- Índices de tabela `orçamento`
--
ALTER TABLE `orçamento`
  ADD PRIMARY KEY (`id_orçamento`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  MODIFY `id_depoimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id_msg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de tabela `orçamento`
--
ALTER TABLE `orçamento`
  MODIFY `id_orçamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
