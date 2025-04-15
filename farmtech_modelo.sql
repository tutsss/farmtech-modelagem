
-- Tabela: Sensor
CREATE TABLE Sensor (
    id_sensor INTEGER PRIMARY KEY,
    tipo_sensor VARCHAR(50),
    modelo VARCHAR(50)
);

-- Tabela: Cultura
CREATE TABLE Cultura (
    id_cultura INTEGER PRIMARY KEY,
    nome_cultura VARCHAR(100),
    tipo_solo VARCHAR(50)
);

-- Tabela: LeituraSensor
CREATE TABLE LeituraSensor (
    id_leitura INTEGER PRIMARY KEY,
    data_hora DATETIME,
    valor_medido DOUBLE,
    id_sensor INTEGER,
    id_cultura INTEGER,
    FOREIGN KEY (id_sensor) REFERENCES Sensor(id_sensor),
    FOREIGN KEY (id_cultura) REFERENCES Cultura(id_cultura)
);

-- Tabela: Irrigacao
CREATE TABLE Irrigacao (
    id_irrigacao INTEGER PRIMARY KEY,
    data_hora DATETIME,
    qtd_agua_litros DOUBLE,
    id_cultura INTEGER,
    FOREIGN KEY (id_cultura) REFERENCES Cultura(id_cultura)
);

-- Tabela: NutrienteAplicado
CREATE TABLE NutrienteAplicado (
    id_aplicacao INTEGER PRIMARY KEY,
    data_hora DATETIME,
    qtd_fosforo DOUBLE,
    qtd_potassio DOUBLE,
    id_cultura INTEGER,
    FOREIGN KEY (id_cultura) REFERENCES Cultura(id_cultura)
);
