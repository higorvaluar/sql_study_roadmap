-- Creating the database
CREATE DATABASE EstudoSQL;
USE EstudoSQL;

-- Creating tables (DDL)
CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    idade INT CHECK (idade >= 18)
);

CREATE TABLE Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE NOT NULL,
    total DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

-- Inserting data (DML)
INSERT INTO Clientes (nome, email, idade) VALUES 
('João Silva', 'joao@email.com', 30),
('Maria Oliveira', 'maria@email.com', 25),
('Carlos Souza', 'carlos@email.com', 40),
('Frieren the Slayer', 'frieren1500@magic.com', 1500),
('Bob Esponja', 'bob@fenda.com', 32),
('Patrick Estrela', 'patrick@rocha.com', 29),
('Chico Bento', 'chico@sitio.com', 50),
('Zé Carioca', 'ze@carioca.com', 45),
('Shrek Ogrão', 'shrek@pantanoso.com', 37),
('Dona Florinda', 'florinda@vila.com', 55),
('Seu Madruga', 'madruga@devendo.com', 65),
('Capitão Caverna', 'caverna@prehistoria.com', 30000),
('Popeye Marinheiro', 'popeye@espinafre.com', 45),
('Darth Vader', 'vader@imp.com', 45),
('Mario Bros', 'mario@bros.com', 40),
('Luigi Bros', 'luigi@bros.com', 38),
('Sonic Ouriço', 'sonic@veloz.com', 35),
('Megamente', 'mega@mente.com', 42),
('Ratatouille', 'remy@chef.com', 28),
('Mestre Yoda', 'yoda@force.com', 900);

INSERT INTO Pedidos (cliente_id, data_pedido, total) VALUES 
(1, '2025-02-01', 250.50),
(2, '2025-02-05', 100.00),
(3, '2025-02-10', 75.30),
(4, '2025-02-12', 1500.99),
(5, '2025-02-15', 50.00),
(6, '2025-02-18', 120.75),
(7, '2025-02-20', 180.90),
(8, '2025-02-22', 250.00),
(9, '2025-02-25', 99.99),
(10, '2025-02-27', 200.45),
(11, '2025-03-01', 175.60),
(12, '2025-03-05', 320.10),
(13, '2025-03-07', 500.50),
(14, '2025-03-10', 89.30),
(15, '2025-03-12', 60.00),
(16, '2025-03-15', 72.80),
(17, '2025-03-18', 55.99),
(18, '2025-03-20', 400.25),
(19, '2025-03-22', 315.75),
(20, '2025-03-25', 290.00);

-- CRUD operations
SELECT * FROM Clientes;
UPDATE Clientes SET idade = 31 WHERE id = 1;
DELETE FROM Pedidos WHERE id = 2;

-- Joins
SELECT Clientes.nome, Pedidos.total FROM Clientes 
INNER JOIN Pedidos ON Clientes.id = Pedidos.cliente_id;

-- Aggregation functions
SELECT cliente_id, COUNT(*) AS total_pedidos, SUM(total) AS total_gasto FROM Pedidos GROUP BY cliente_id HAVING SUM(total) > 100;

-- Subqueries
SELECT nome FROM Clientes WHERE id IN (SELECT cliente_id FROM Pedidos WHERE total > 200);

-- Transactions (TCL)
START TRANSACTION;
UPDATE Pedidos SET total = total + 10 WHERE id = 1;
ROLLBACK;

-- Views
CREATE VIEW ClientePedidos AS
SELECT Clientes.nome, Pedidos.total FROM Clientes 
INNER JOIN Pedidos ON Clientes.id = Pedidos.cliente_id;
