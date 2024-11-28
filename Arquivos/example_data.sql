INSERT INTO motorista (id_motorista, nome, telefone, email, meta_diaria_liquida)
VALUES
(1, 'Carlos Silva', '999999999', 'carlos@example.com', 150),
(2, 'Fernanda Oliveira', '988888888', 'fernanda@example.com', 180),
(3, 'João Souza', '977777777', 'joao@example.com', 200);

INSERT INTO veiculo (id_veiculo, id_motorista, marco, modelo, consumo_cidade)
VALUES
(1, 1, 'Volkswagen', 'Gol', 12),
(2, 2, 'Fiat', 'Uno', 14),
(3, 3, 'Chevrolet', 'Onix', 11);

INSERT INTO corrida (id_corrida, id_motorista, data_hora_inicio, data_hora_fim, distancia, preco_viagem, tempo_trajeto)
VALUES
(1, 1, '2024-11-01 08:00:00', '2024-11-01 08:30:00', 10, 30, 30),
(2, 2, '2024-11-01 09:00:00', '2024-11-01 09:45:00', 15, 45, 45),
(3, 3, '2024-11-01 10:00:00', '2024-11-01 10:25:00', 8, 24, 25);

INSERT INTO rentabilidade (id_rentabilidade, id_corrida, custo_medio_combustivel, rentabilidade_final)
VALUES
(1, 1, 5, 25),
(2, 2, 6, 35),
(3, 3, 4, 20);
