# Projeto: Modelo de Regressão para Prever o Preço de Carros

Este projeto foi desenvolvido como parte da Sprint 5 do Programa de Bolsas Data-Science AWS, promovido pela Compass UOL. O objetivo principal é criar um modelo de regressão para prever o preço de carros com base em um conjunto de dados fornecido.

## Sumário

1. [Introdução](#introducao)
2. [Importação e Divisão dos Dados](#importacao-e-divisao-dos-dados)
3. [Análise Exploratória](#analise-exploratoria)
    - [Transformação de Tipos](#transformacao-de-tipos)
    - [Remoção de Valores Duplicados](#remocao-de-valores-duplicados)
    - [Identificação de Outliers](#identificacao-de-outliers)
    - [Tratamento de Valores Nulos](#tratamento-de-valores-nulos)
4. [Criação do DataFrame Final](#criacao-do-dataframe-final)
5. [Teste de Correlação](#teste-de-correlacao)
6. [Pré-Processamento dos Dados](#pre-processamento-dos-dados)
    - [One-Hot Encoding](#one-hot-encoding)
    - [Normalização dos Dados](#normalizacao-dos-dados)
    - [Divisão do Conjunto de Dados](#divisao-do-conjunto-de-dados)
7. [Treinamento do Modelo](#treinamento-do-modelo)
    - [Random Forest](#random-forest)
    - [XGBoost](#xgboost)
8. [Tunig](#Optuna)
    - [XGBoost](#xgboost)
9. [Avaliação](#)
    - [XGBoost](#Graficos)


---

## Introdução

O objetivo deste projeto é construir um pipeline de machine learning que utilize técnicas de processamento de dados e algoritmos de regressão para prever o preço de carros. A iniciativa inclui etapas de análise exploratória, pré-processamento e treinamento de modelos, utilizando métricas apropriadas para avaliação.

## Importação e Divisão dos Dados

Os dados foram importados e divididos conforme as proporções especificadas, garantindo conjuntos de treino, validação e teste para uma avaliação consistente.

## Análise Exploratória

### Transformação de Tipos

Foi realizada a transformação de colunas do tipo `object` para `category` para otimizar o uso de memória e melhorar o desempenho das análises subsequentes.

### Remoção de Valores Duplicados

Registros duplicados foram identificados e removidos, mantendo apenas um exemplo de cada entrada duplicada. Por exemplo, foram encontrados 8 registros duplicados da marca Volvo.

### Identificação de Outliers

Outliers foram detectados por meio de métodos estatísticos e visuais. Esses valores foram avaliados para determinar seu impacto no modelo.

### Tratamento de Valores Nulos

Valores ausentes foram tratados com técnicas como substituição por médias, medianas ou exclusão de registros, dependendo do contexto.

## Criação do DataFrame Final

Foi criado um DataFrame final contendo as variáveis mais relevantes para o treinamento dos modelos, após a remoção de colunas irrelevantes e o tratamento de inconsistências.

## Teste de Correlação

As correlações entre as variáveis independentes e a variável alvo foram analisadas, auxiliando na seleção de atributos mais relevantes para o modelo.

## Pré-Processamento dos Dados

### One-Hot Encoding

Variáveis categóricas foram convertidas em variáveis binárias por meio de one-hot encoding, garantindo que os modelos possam processá-las adequadamente.

### Normalização dos Dados

Os dados foram normalizados para trazer todas as variáveis para a mesma escala, reduzindo o impacto de magnitudes diferentes entre elas.

### Divisão do Conjunto de Dados

O conjunto de dados foi dividido em conjuntos de treino, validação e teste, garantindo uma avaliação imparcial do desempenho dos modelos.

## Treinamento do Modelo

### Random Forest

O algoritmo Random Forest foi utilizado como um dos modelos principais. Seu desempenho foi avaliado com base em métricas como R² e erro médio absoluto.

### XGBoost

O modelo XGBoost também foi treinado e comparado ao Random Forest, com o objetivo de identificar a melhor abordagem para prever os preços dos carros.


### MLP

O modelo MLP também foi treinado e comparado ao aos dois anteriores, com o objetivo de identificar a melhor abordagem para prever os preços dos carros.

# Tuning

O processo de tuning, utilizando o Optuna, foi aplicado ao modelo XGBoost, que inicialmente apresentou o melhor desempenho entre os modelos testados. Além de obter os melhores resultados nas métricas estabelecidas, o XGBoost também se destacou pela rapidez na resolução da tarefa. O tuning foi realizado após vários testes manuais, com o objetivo principal de refinar ainda mais o desempenho do modelo e otimizar seus resultados.

# Avaliação
Na última seção, as métricas são apresentadas por meio de gráficos, destacando as principais métricas utilizadas nos três modelos analisados. Essas métricas, amplamente empregadas em problemas de regressão, avaliam diferentes aspectos do desempenho do modelo.

As métricas consideradas como principais neste desafio foram:

R²: Mede o ajuste global do modelo, indicando a proporção da variabilidade dos dados explicada pelo modelo.

MAE (Mean Absolute Error): Avalia a magnitude absoluta dos erros, sendo uma métrica simples e intuitiva para compreender a precisão do modelo.
Essas métricas fornecem uma visão abrangente e detalhada do desempenho de cada modelo, auxiliando na comparação e na escolha da abordagem mais eficiente.


---

Este projeto exemplifica o uso de técnicas modernas de ciência de dados e machine learning para resolver problemas reais, demonstrando o impacto do pré-processamento e da escolha de modelos na qualidade das previsões.


# Projeto 2
[Projeto_2](projeto_2)

<!-- [Exemplos/Execicios](exercicios/Exercicios_(compilado).ipynb) -->