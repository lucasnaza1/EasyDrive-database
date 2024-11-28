CREATE DATABASE EasyDrive;
USE EasyDrive;
CREATE TABLE motorista (
    id_motorista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100) NOT NULL UNIQUE,
    meta_diaria_liquida DECIMAL(10,2) NOT NULL
);
CREATE TABLE veiculo (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    id_motorista INT NOT NULL,
    marca VARCHAR(45) NOT NULL,
    modelo VARCHAR(45) NOT NULL,
    consumo_cidade DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (id_motorista) REFERENCES motorista(id_motorista)
);
CREATE TABLE corrida (
    id_corrida INT PRIMARY KEY AUTO_INCREMENT,
    id_motorista INT NOT NULL,
    data_hora_inicio DATETIME NOT NULL,
    data_hora_fim DATETIME NOT NULL,
    distancia DECIMAL(5,2) NOT NULL,
    preco_viagem DECIMAL(10,2) NOT NULL,
    tempo_trajeto TIME NOT NULL,
    FOREIGN KEY (id_motorista) REFERENCES motorista(id_motorista)
);
CREATE TABLE rentabilidade (
    id_rentabilidade INT PRIMARY KEY AUTO_INCREMENT,
    id_corrida INT NOT NULL,
    custo_medio_combustivel DECIMAL(10,2) NOT NULL,
    rentabilidade_final DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_corrida) REFERENCES corrida(id_corrida)
);
