-- Inserção de dados

-- Produto:
INSERT INTO Produto (nomeProduto, descricao, preco, quantidadeEstoque) VALUES
('Argamassa', 'Argamassa AC II para assentamento de cerâmica', 20.00, 200),
('Viga de Concreto', 'Viga de concreto pré-moldado 10x20cm', 80.00, 50),
('Telha de Cerâmica', 'Telha cerâmica esmaltada 30x40cm', 10.00, 500),
('Tinta Látex', 'Tinta látex PVA branca', 30.00, 100),
('Tinta Acrílica', 'Tinta acrílica superlavável cor areia', 50.00, 50),
('Porta de Madeira', 'Porta de madeira maciça lisa 80x210cm', 150.00, 20),
('Janela de Alumínio', 'Janela de alumínio branco 120x120cm', 200.00, 30),
('Torneira de Banheiro', 'Torneira para banheiro cromada', 40.00, 100),
('Vaso Sanitário', 'Vaso sanitário com caixa acoplada', 250.00, 50),
('Piso Cerâmico', 'Piso cerâmico esmaltado 60x60cm', 35.00, 300),
('Tijolo Cerâmico', 'Tijolo cerâmico 9x14x19cm', 1.50, 1000),
('Cimento Portland', 'Cimento Portland CP II F 50kg', 25.00, 300),
('Areia Lavada', 'Areia lavada média ensacada 20kg', 10.00, 500),
('Pedra Britada', 'Pedra britada 1/2 ensacada 20kg', 15.00, 400),
('Vergalhão', 'Vergalhão de aço CA50 3/8"', 12.00, 200),
('Bloco de Concreto', 'Bloco de concreto estrutural 14x19x39cm', 3.00, 800),
('Tubo PVC', 'Tubo de PVC rígido 100mm', 8.00, 150),
('Cerâmica para Piso', 'Cerâmica para piso externo 20x20cm', 18.00, 400),
('Torneira de Cozinha', 'Torneira para cozinha de parede', 45.00, 150),
('Luminária LED', 'Luminária de LED embutida 18W', 30.00, 100);

-- Endereco: para pessoas e fornecedores
INSERT INTO Endereco (numeroEndereco, logradouro, bairro, cidade, estado) VALUES
(100, 'Rua das Flores', 'Copacabana', 'Rio de Janeiro', 'RJ'),
(200, 'Avenida das Palmeiras', 'Botafogo', 'Rio de Janeiro', 'RJ'),
(300, 'Rua dos Coqueiros', 'Barra da Tijuca', 'Rio de Janeiro', 'RJ'),
(400, 'Avenida das Gaivotas', 'Ipanema', 'Rio de Janeiro', 'RJ'),
(500, 'Rua das Amendoeiras', 'Leblon', 'Rio de Janeiro', 'RJ'),
(600, 'Avenida dos Pássaros', 'Jacarepaguá', 'Rio de Janeiro', 'RJ'),
(700, 'Rua das Mangueiras', 'Tijuca', 'Rio de Janeiro', 'RJ'),
(800, 'Avenida das Rosas', 'Laranjeiras', 'Rio de Janeiro', 'RJ'),
(900, 'Rua dos Girassóis', 'Gávea', 'Rio de Janeiro', 'RJ'),
(1000, 'Avenida dos Flamboyants', 'Flamengo', 'Rio de Janeiro', 'RJ'),
(1100, 'Rua das Magnólias', 'Centro', 'Rio de Janeiro', 'RJ'),
(1200, 'Avenida dos Jacarandás', 'Urca', 'Rio de Janeiro', 'RJ'),
(1300, 'Rua dos Ipês', 'Santa Teresa', 'Rio de Janeiro', 'RJ'),
(1400, 'Avenida dos Flamboyants', 'Catete', 'Rio de Janeiro', 'RJ'),
(1500, 'Rua das Palmeiras', 'Lapa', 'Rio de Janeiro', 'RJ'),
(1600, 'Rua dos Jacarandás', 'Tijuca', 'Rio de Janeiro', 'RJ'),
(1700, 'Avenida das Hortênsias', 'Méier', 'Rio de Janeiro', 'RJ'),
(1800, 'Rua das Violetas', 'Santa Cruz', 'Rio de Janeiro', 'RJ'),
(1900, 'Avenida dos Lírios', 'Barra da Tijuca', 'Rio de Janeiro', 'RJ'),
(2000, 'Rua das Acácias', 'Recreio dos Bandeirantes', 'Rio de Janeiro', 'RJ');

-- Pessoa:
INSERT INTO Pessoa (idEndereco, nomePessoa, cpf, email, genero) VALUES
(16, 'Roberto Santos', '27399822085', 'roberto.santos@example.com', 'M'),
(17, 'Juliana Lima', '03367609064', 'juliana.lima@example.com', 'F'),
(18, 'Fernando Costa', '64543550048', 'fernando.costa@example.com', 'M'),
(19, 'Amanda Oliveira', '26460852065', 'amanda.oliveira@example.com', 'F'),
(20, 'Rafaela Souza', '51254071008', 'rafaela.souza@example.com', 'F'),
(21, 'Márcio Pereira', '29248229042', 'marcio.pereira@example.com', 'M'),
(22, 'Camila Rodrigues', '88259428008', 'camila.rodrigues@example.com', 'F'),
(23, 'Lucas Alves', '24686501075', 'lucas.alves@example.com', 'M'),
(24, 'Carolina Silva', '71830901087', 'carolina.silva@example.com', 'F'),
(25, 'Fábio Santos', '91462710077', 'fabio.santos@example.com', 'M'),
(26, 'João Silva', '28351553093', 'joao.silva@hotmail.com', 'M'),
(27, 'Maria Santos', '28557580096', 'maria.santos@email.com', 'F'),
(28, 'Carlos Oliveira', '54349656049', 'carlos.oliveira@email.com', 'M'),
(29, 'Ana Pereira', '24846183017', 'ana.pereira@email.com', 'F'),
(30, 'Pedro Souza', '16251929081', 'pedro.souza@email.com', 'M'),
(18, 'Juliana Costa', '00666975060', 'juliana.costa@email.com', 'F'),
(24, 'Márcio Ferreira', '68253769008', 'marcio.ferreira@email.com', 'M'),
(17, 'Cristina Almeida', '03425655086', 'cristina.almeida@email.com', 'F'),
(26, 'Ricardo Gomes', '91428573097', 'ricardo.gomes@email.com', 'M'),
(22, 'Camila Lima', '31200487044', 'camila.lima@email.com', 'F');

-- Telefone:
INSERT INTO Telefone (idPessoa, numeroTelefone) VALUES
(61, '21987654321'),
(62, '21901234567'),
(63, '21987659876'),
(64, '21987654329'),
(65, '21987659876'),
(66, '21901234567'),
(67, '21987654321'),
(68, '21901234567'),
(69, '21987654329'),
(70, '21987659876'),
(71, '21901234567'),
(72, '21987654321'),
(73, '21901234567'),
(74, '21987654329'),
(75, '21987659876'),
(76, '21901234567'),
(77, '21987654321'),
(78, '21901234567'),
(79, '21987654329'),
(80, '21987659876');

-- Funcionario: 1 gerente, 3 vendedores, 2 caixas, 2 entregadores, 1 segurança
INSERT INTO Funcionario (idPessoa, cargo, dataAdmissao, salario) VALUES
(61, 'gerente', '2021-05-20', 5000.00),
(62, 'vendedor', '2023-01-15', 2500.00),
(63, 'vendedor', '2023-02-01', 2500.00),
(64, 'vendedor', '2023-03-01', 2500.00),
(65, 'caixa', '2023-02-01', 2200.00),
(66, 'caixa', '2023-03-01', 2200.00),
(67, 'entregador', '2023-02-15', 2000.00),
(68, 'entregador', '2023-04-01', 2000.00),
(69, 'segurança', '2023-04-15', 2300.00);

-- Cliente:
INSERT INTO Cliente (idPessoa) VALUES
(71),
(72),
(73),
(74),
(75);

-- Fornecedor:
INSERT INTO Fornecedor (idEndereco, nomeFornecedor, cnpj, email) VALUES
(48, 'Tigre', '25479239000145', 'tigre@gmail.com'),
(50, 'Votorantim', '24605715000181', 'votorantim@gmail.com'),
(49, 'Deca', '21596813000166', 'deca@hotmail.com'),
(51, 'Lorenzentti', '29642617000192', 'lorenzentti@hotmail.com');

-- Pedido:
INSERT INTO Pedido (idCliente, dataPedido, statusPedido, total) VALUES
(1, '2023-06-01', 'aguarde', 500.00),
(2, '2023-06-02', 'concluido', 60.00),
(3, '2023-06-03', 'cancelado', 120.00),
(4, '2023-06-04', 'aguarde', 100.00),
(5, '2023-06-05', 'concluido', 350.00);

-- Pedido_Produto:
INSERT INTO Pedido_Produto (idProduto, idPedido, quantidade, precoUnitario) VALUES
(21, 8, 20, 25.00),  -- 20 * 25.00 = 500.00
(22, 9, 100, 0.60),  -- 100 * 0.60 = 60.00
(23, 10, 1, 120.00),  -- 1 * 120.00 = 120.00
(24, 11, 1, 100.00),  -- 1 * 100.00 = 100.00
(25, 12, 100, 3.50);  -- 100 * 3.50 = 350.00

-- Venda:
INSERT INTO Venda (idPedido_Produto, idFuncionario, dataVenda, total, statusVenda) VALUES
(1, 1, '2023-07-01', 500.00, 'concluida'),           -- vendedor
(2, 2, '2023-07-02', 60.00, 'em processamento'),      -- gerente
(3, 4, '2023-07-03', 120.00, 'cancelada'),            -- gerente
(4, 3, '2023-07-04', 100.00, 'concluida'),            -- vendedor
(5, 1, '2023-07-05', 350.00, 'em processamento');     -- vendedor

-- Entrega:
INSERT INTO Entrega (idVenda, idEndereco, idFuncionario, dataEntrega, statusEntrega) VALUES
(1, 25, 7, '2023-08-01', 'entregue'),              -- entregador
(2, 28, 8, '2023-08-02', 'saiu p/ entrega'),       -- entregador
(3, 18, 7, '2023-08-03', 'em processamento'),      -- entregador
(4, 29, 8, '2023-08-04', 'entregue'),              -- entregador
(5, 20, 7, '2023-08-05', 'saiu p/ entrega');       -- entregador

-- Fornecedor_Produto:
INSERT INTO Fornecedor_Produto (idProduto, idFornecedor) VALUES
(21, 6),  -- Argamassa
(22, 6),  -- Viga de Concreto
(31, 6), -- Tijolo Cerâmico
(32, 6), -- Cimento Portland
(33, 6), -- Areia Lavada
(34, 6), -- Pedra Britada
(35, 6), -- Vergalhão
(36, 6), -- Bloco de Concreto
(24, 5),  -- Tinta Látex
(25, 5),  -- Tinta Acrílica
(30, 5), -- Piso Cerâmico
(38, 5), -- Cerâmica para Piso
(28, 8),  -- Torneira de Banheiro
(39, 8), -- Torneira de Cozinha
(37, 8), -- Tubo PVC
(40, 8), -- Luminária LED
(23, 7),  -- Telha de Cerâmica
(26, 7),  -- Porta de Madeira
(27, 7),  -- Janela de Alumínio
(29, 7);  -- Vaso Sanitário

