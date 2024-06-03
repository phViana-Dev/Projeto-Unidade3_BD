-- Functions and Triggers


-- Entrega só recebe 'Venda' com status 'concluida'

-- function

CREATE OR REPLACE FUNCTION check_venda_status()
RETURNS TRIGGER AS $$
BEGIN
  IF (SELECT statusVenda FROM Venda WHERE idVenda = NEW.idVenda) != 'concluida' THEN
    RAISE EXCEPTION 'Entrega só pode receber id''s de Venda com status: ''concluida''';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- trigger

CREATE TRIGGER trg_check_venda_status
BEFORE INSERT OR UPDATE ON Entrega
FOR EACH ROW
EXECUTE FUNCTION check_venda_status();


-- Pedido_Produto só recebe 'Pedido' com status 'concluido'

-- function

CREATE OR REPLACE FUNCTION check_pedido_status()
RETURNS TRIGGER AS $$
BEGIN
  IF (SELECT statusPedido FROM Pedido WHERE idPedido = NEW.idPedido) != 'concluido' THEN
    RAISE EXCEPTION 'Pedido_Produto só pode aceitar id''s de pedidos com status: ''concluido''';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- trigger

CREATE TRIGGER trg_check_pedido_status
BEFORE INSERT OR UPDATE ON Pedido_Produto
FOR EACH ROW
EXECUTE FUNCTION check_pedido_status();


-- Entrega só pode receber id's de 'Funcionario' se o cargo for 'entregador'

-- function 

CREATE OR REPLACE FUNCTION check_funcionario_cargo_entregador()
RETURNS TRIGGER AS $$
BEGIN
  IF (SELECT cargo FROM Funcionario WHERE idFuncionario = NEW.idFuncionario) != 'entregador' THEN
    RAISE EXCEPTION 'Entrega só pode receber id''s de ''Funcionario'' se o cargo dele for ''entregador''';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- trigger

CREATE TRIGGER trg_check_funcionario_cargo_entregador
BEFORE INSERT OR UPDATE ON Entrega
FOR EACH ROW
EXECUTE FUNCTION check_funcionario_cargo_entregador();


-- Venda só pode receber id's de 'Funcionario' se o cargo for 'vendedor' ou 'gerente' 

-- function 

CREATE OR REPLACE FUNCTION check_funcionario_cargo_venda()
RETURNS TRIGGER AS $$
BEGIN
  IF (SELECT cargo FROM Funcionario WHERE idFuncionario = NEW.idFuncionario) NOT IN ('vendedor', 'gerente') THEN
    RAISE EXCEPTION 'Venda só pode receber id''s de ''Funcionario'' se o cargo dele for ''vendedor'' ou ''gerente''';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- trigger

CREATE TRIGGER trg_check_funcionario_cargo_venda
BEFORE INSERT OR UPDATE ON Venda
FOR EACH ROW
EXECUTE FUNCTION check_funcionario_cargo_venda();


-- Atualização do estoque com a 'Venda'

-- function

CREATE OR REPLACE FUNCTION update_produto_estoque()
RETURNS TRIGGER AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    UPDATE Produto
    SET quantidadeEstoque = quantidadeEstoque - NEW.quantidade
    WHERE idProduto = NEW.idProduto;
  ELSIF TG_OP = 'DELETE' THEN
    UPDATE Produto
    SET quantidadeEstoque = quantidadeEstoque + OLD.quantidade
    WHERE idProduto = OLD.idProduto;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- trigger 

CREATE TRIGGER trg_update_produto_estoque
AFTER INSERT OR DELETE ON Pedido_Produto
FOR EACH ROW
EXECUTE FUNCTION update_produto_estoque();


-- Garantir que Venda tenha o campo 'total' com o valor correto

-- function 

CREATE OR REPLACE FUNCTION atualizar_total_venda()
RETURNS TRIGGER AS $$
DECLARE
    total_pedido NUMERIC;
BEGIN
    total_pedido := NEW.quantidade * NEW.precoUnitario;
    NEW.total := total_pedido;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- trigger

CREATE TRIGGER trg_atualizar_total_venda
BEFORE INSERT ON Venda
FOR EACH ROW
EXECUTE FUNCTION atualizar_total_venda();

