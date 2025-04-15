
# 🌾 FarmTech Solutions - Modelagem de Banco de Dados

Este repositório contém a modelagem relacional da startup fictícia **FarmTech Solutions**, focada em sensoriamento e automação agrícola.

## 🧠 Objetivo
Armazenar e analisar dados capturados por sensores instalados em plantações, com o objetivo de otimizar a irrigação e aplicação de nutrientes como fósforo (P) e potássio (K).

## 🧱 Entidades e Relacionamentos

### 📡 Sensor
- `id_sensor` (PK)
- `tipo_sensor` - Tipo: umidade, pH, NPK
- `modelo`

### 🌱 Cultura
- `id_cultura` (PK)
- `nome_cultura` - Ex: Soja, Milho
- `tipo_solo` - Ex: argiloso, arenoso

### 📊 LeituraSensor
- `id_leitura` (PK)
- `data_hora`
- `valor_medido`
- `id_sensor` (FK)
- `id_cultura` (FK)

### 💧 Irrigacao
- `id_irrigacao` (PK)
- `data_hora`
- `qtd_agua_litros`
- `id_cultura` (FK)

### 🧪 NutrienteAplicado
- `id_aplicacao` (PK)
- `data_hora`
- `qtd_fosforo`
- `qtd_potassio`
- `id_cultura` (FK)

## 🔁 Relacionamentos
- **Sensor 1:N LeituraSensor**
- **Cultura 1:N LeituraSensor**
- **Cultura 1:N Irrigacao**
- **Cultura 1:N NutrienteAplicado**

## 📂 Conteúdo do Repositório
- `farmtech_modelo.sql` – Script de criação do banco
- `farmtech_der.png` – Diagrama DER visual
- `README.md` – Documentação do projeto

## 👨‍💻 Integrantes do Grupo
- Nome completo do responsável: André Anderson
- RM: 566409
- Fase/Capítulo: fase2_cap1

## 🧠 Observações
A modelagem segue os princípios de cardinalidade 1:N, uso de chaves primárias e estrangeiras, conforme os capítulos 10 a 12 do material de Banco de Dados da FIAP.
