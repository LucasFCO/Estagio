

# Projeto 3

[Projeto 3](projeto3.ipynb)

O projeto desenvolveu modelos de aprendizado de máquina para prever o risco de inadimplência de clientes da Home Credit, que usa dados alternativos para avaliar a capacidade de pagamento.

O trabalho envolveu a exploração e pré-processamento dos dados, incluindo limpeza e seleção de características para melhorar o desempenho dos modelos. Foram testados algoritmos como Regressão Logística, Random Forest, XGBoost e LGBM, comparando seu desempenho com métricas como Curva ROC e Matriz de Confusão. O modelo mais adequado foi escolhido para garantir uma avaliação precisa do risco de crédito.

[Notebook Auxiliar](auxiliar.ipynb)

O Notebook Auxiliar foi utilizado para realizar a análise inicial de todos os datasets envolvidos no projeto e unificá-los após essa etapa. Durante essa análise, foram verificadas diversas características dos dados, incluindo a quantidade de amostras e colunas com valores preenchidos, a presença de valores duplicados, a frequência de diferentes categorias e a correlação entre as variáveis.

Após essa exploração inicial, os dados foram organizados e estruturados, permitindo a criação de dois novos DataFrames: um para treinamento e outro para teste. Esses conjuntos foram exportados para serem utilizados no desenvolvimento e avaliação dos modelos preditivos, garantindo que a base estivesse devidamente preparada para a fase de modelagem do projeto.

[DATA](data.zip)

Na pasta "data", estão armazenados os datasets criados após o processamento inicial, incluindo os conjuntos de treino e teste utilizados na modelagem. Além disso, essa pasta contém o modelo de machine learning treinado, que foi salvo para reutilização ou futuras análises. Também está presente um DataFrame com os resultados da predição, que registra as classificações feitas pelo modelo em relação ao risco de inadimplência dos clientes.