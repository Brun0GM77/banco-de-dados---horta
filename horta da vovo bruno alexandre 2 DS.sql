create database horta_da_vovo_bruno_alexandre;

create table if not exists planta (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_comum VARCHAR(55) NOT NULL,
nome_cientifico VARCHAR(55),
tipo_planta VARCHAR(55) not null,
data_plantio DATE not null

);

create table if not exists colheita (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
planta_id bigint not null,
FOREIGN KEY (planta_id) REFERENCES planta(id),
data_colheita DATE not null,
quantidade_colhida float not null,
qualidade VARCHAR(50) not null
);

INSERT INTO planta (nome_comum, nome_cientifico, tipo_planta, data_plantio)
VALUES 
('Alface', 'Lactuca sativa', 'Hortaliça', '2025-01-01'),
('Tomate', 'Solanum lycopersicum', 'Hortaliça', '2025-02-15'),
('Cenoura', 'Daucus carota', 'Hortaliça', '2025-03-10'),
('Manjericão', 'Ocimum basilicum', 'Erva', '2025-04-05'),
('Coentro', 'Coriandrum sativum', 'Erva', '2025-05-10'),
('Pimentão', 'Capsicum annuum', 'Hortaliça', '2025-06-01'),
('Rúcula', 'Eruca vesicaria', 'Hortaliça', '2025-07-20'),
('Cebolinha', 'Allium fistulosum', 'Erva', '2025-08-10'),
('Abóbora', 'Cucurbita pepo', 'Hortaliça', '2025-09-05'),
('Alho-poró', 'Allium porrum', 'Hortaliça', '2025-10-10');

INSERT INTO colheita (planta_id, data_colheita, quantidade_colhida, qualidade)
VALUES
(1, '2025-03-01', 1.5, 'Boa'),
(2, '2025-05-10', 3.0, 'Excelente'),
(3, '2025-06-20', 2.0, 'Regular'),
(4, '2025-06-15', 0.5, 'Boa'),
(5, '2025-06-30', 0.3, 'Excelente'),
(6, '2025-09-10', 4.0, 'Boa'),
(7, '2025-09-25', 1.2, 'Boa'),
(8, '2025-10-10', 0.8, 'Regular'),
(9, '2025-11-01', 5.0, 'Excelente'),
(10, '2025-12-15', 2.5, 'Boa');


SELECT 
    p.nome_comum, 
    c.data_colheita, 
    c.quantidade_colhida, 
    p.tipo_planta,
    c.qualidade
FROM 
    planta p
inner JOIN 
    colheita c 
ON 
    p.id = c.planta_id;
    
    select * from colheita;