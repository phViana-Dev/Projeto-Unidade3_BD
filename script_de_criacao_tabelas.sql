-- Criação das tabelas

CREATE TABLE Produto (
  idProduto SERIAL NOT NULL,
  nomeProduto VARCHAR(30),
  descricao TEXT,
  preco DOUBLE PRECISION,
  quantidadeEstoque INTEGER,
  PRIMARY KEY(idProduto)
);

CREATE TABLE Endereco (
  idEndereco SERIAL NOT NULL,
  numeroEndereco INTEGER,
  logradouro VARCHAR(30),
  bairro VARCHAR(30),
  cidade VARCHAR(30),
  estado VARCHAR(30),
  PRIMARY KEY(idEndereco)
);

CREATE TABLE Pessoa (
  idPessoa SERIAL NOT NULL,
  idEndereco INTEGER NOT NULL,
  nomePessoa VARCHAR(30),
  cpf VARCHAR(11),
  email VARCHAR(30),
  genero CHAR(1) CHECK (genero IN ('F', 'M')),
  PRIMARY KEY(idPessoa),
  FOREIGN KEY(idEndereco) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Telefone (
  idTelefone SERIAL NOT NULL,
  idPessoa INTEGER NOT NULL,
  numeroTelefone VARCHAR(16),
  PRIMARY KEY(idTelefone),
  FOREIGN KEY(idPessoa) REFERENCES Pessoa(idPessoa)
);

CREATE TABLE Funcionario (
  idFuncionario SERIAL NOT NULL,
  idPessoa INTEGER NOT NULL,
  cargo VARCHAR(20) CHECK (cargo IN ('vendedor', 'gerente', 'caixa', 'entregador', 'segurança')),
  dataAdmissao DATE,
  salario DOUBLE PRECISION,
  PRIMARY KEY(idFuncionario),
  FOREIGN KEY(idPessoa) REFERENCES Pessoa(idPessoa)
);

CREATE TABLE Fornecedor (
  idFornecedor SERIAL NOT NULL,
  idEndereco INTEGER NOT NULL,
  nomeFornecedor VARCHAR(30),
  cnpj VARCHAR(15),
  email VARCHAR(30),
  PRIMARY KEY(idFornecedor),
  FOREIGN KEY(idEndereco) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Cliente (
  idCliente SERIAL NOT NULL,
  idPessoa INTEGER NOT NULL,
  PRIMARY KEY(idCliente),
  FOREIGN KEY(idPessoa) REFERENCES Pessoa(idPessoa)
);

CREATE TABLE Fornecedor_Produto (
  idFornecedor_Produto SERIAL NOT NULL,
  idProduto INTEGER NOT NULL,
  idFornecedor INTEGER NOT NULL,
  PRIMARY KEY(idFornecedor_Produto),
  FOREIGN KEY(idFornecedor) REFERENCES Fornecedor(idFornecedor),
  FOREIGN KEY(idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE Pedido (
  idPedido SERIAL NOT NULL,
  idCliente INTEGER NOT NULL,
  dataPedido DATE,
  statusPedido VARCHAR(10) CHECK (statusPedido IN ('aguarde', 'concluido', 'cancelado')),
  total DOUBLE PRECISION,
  PRIMARY KEY(idPedido),
  FOREIGN KEY(idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Pedido_Produto (
  idPedido_Produto SERIAL NOT NULL,
  idProduto INTEGER NOT NULL,
  idPedido INTEGER NOT NULL,
  quantidade INTEGER,
  precoUnitario DOUBLE PRECISION,
  PRIMARY KEY(idPedido_Produto),
  FOREIGN KEY(idProduto) REFERENCES Produto(idProduto),
  FOREIGN KEY(idPedido) REFERENCES Pedido(idPedido)
);

CREATE TABLE Venda (
  idVenda SERIAL NOT NULL,
  idPedido_Produto INTEGER NOT NULL,
  idFuncionario INTEGER NOT NULL,
  dataVenda DATE,
  total DOUBLE PRECISION,
  statusVenda VARCHAR(20) CHECK (statusVenda IN ('concluida', 'em processamento', 'cancelada')),
  PRIMARY KEY(idVenda),
  FOREIGN KEY(idFuncionario) REFERENCES Funcionario(idFuncionario),
  FOREIGN KEY(idPedido_Produto) REFERENCES Pedido_Produto(idPedido_Produto)
);

CREATE TABLE Entrega (
  idEntrega SERIAL NOT NULL,
  idVenda INTEGER NOT NULL,
  idEndereco INTEGER NOT NULL,
  idFuncionario INTEGER NOT NULL,
  dataEntrega DATE,
  statusEntrega VARCHAR(20) CHECK (statusEntrega IN ('entregue', 'saiu p/ entrega', 'em processamento')),
  PRIMARY KEY(idEntrega),
  FOREIGN KEY(idFuncionario) REFERENCES Funcionario(idFuncionario),
  FOREIGN KEY(idEndereco) REFERENCES Endereco(idEndereco),
  FOREIGN KEY(idVenda) REFERENCES Venda(idVenda)
);
