-- EXERCÍCIOS Seção 3 ######################################################################
-- (Exercício 1) Selecione os nomes de cidade distintas que existem no estado de
-- Minas Gerais em ordem alfabética (dados da tabela sales.customers)
SELECT STATE
FROM sales.customers
ORDER BY STATE

-- (Exercício 2) Selecione o visit_id das 10 compras mais recentes efetuadas
-- (dados da tabela sales.funnel)
SELECT visit_id
FROM sales.funnel
ORDER BY visit_page_date DESC limit 10

-- (Exercício 3) Selecione todos os dados dos 10 clientes com maior score nascidos
-- após 01/01/2000 (dados da tabela sales.customers)
SELECT *
FROM sales.customers
WHERE birth_date > '01/01/2000' limit 10

-- EXERCÍCIOS Seção 4 ######################################################################
-- (Exercício 1) Calcule quantos salários mínimos ganha cada cliente da tabela 
-- sales.customers. Selecione as colunas de: email, income e a coluna calculada "salários mínimos"
-- Considere o salário mínimo igual à R$1200 
SELECT email
	,income
	,(income / 1220) AS "salario_minimo"
FROM sales.customers

-- (Exercício 2) Na query anterior acrescente uma coluna informando TRUE se o cliente
-- ganha acima de 5 salários mínimos e FALSE se ganha 4 salários ou menos.
-- Chame a nova coluna de "acima de 4 salários"
SELECT email
	,income
	,(income / 1220) AS "salario_minimo"
	,((income / 1220) > 4) AS "acima de 4 salários"
FROM sales.customers

-- (Exercício 3) Na query anterior filtre apenas os clientes que ganham entre
-- 4 e 5 salários mínimos. Utilize o comando BETWEEN
SELECT email
	,income
	,(income / 1220) AS "salario_minimo"
FROM sales.customers
WHERE (income / 1220) BETWEEN 4
		AND 6

-- (Exercício 4) Selecine o email, cidade e estado dos clientes que moram no estado de 
-- Minas Gerais e Mato Grosso. 
SELECT email
	,city
	,STATE
FROM sales.customers
WHERE STATE LIKE 'MG'
	OR STATE LIKE 'MT'

-- (Exercício 5) Selecine o email, cidade e estado dos clientes que não 
-- moram no estado de São Paulo.
SELECT email
	,city
	,STATE
FROM sales.customers
WHERE STATE NOT IN ('SP')

-- (Exercício 6) Selecine os nomes das cidade que começam com a letra Z.
-- Dados da tabela temp_tables.regions
SELECT city
FROM temp_tables.regions
WHERE city ilike 'Z%'

-- EXERCÍCIOS Seção 5 ########################################################################
-- (Exercício 1) Conte quantos clientes da tabela sales.customers tem menos de 30 anos
SELECT count(*)
FROM sales.customers
WHERE ((CURRENT_DATE - birth_date) / 365) < 30

-- (Exercício 2) Informe a idade do cliente mais velho e mais novo da tabela sales.customers
SELECT *
FROM sales.customers
WHERE MAX((CURRENT_DATE - birth_date) / 365)

-- (Exercício 3) Selecione todas as informações do cliente mais rico da tabela sales.customers
-- (possívelmente a resposta contém mais de um cliente)
SELECT *
	,MAX(income)
FROM sales.customers

-- (Exercício 4) Conte quantos veículos de cada marca tem registrado na tabela sales.products
-- Ordene o resultado pelo nome da marca
SELECT brand
	,count(DISTINCT model)
FROM sales.products
GROUP BY (brand)
ORDER BY (brand)

-- (Exercício 5) Conte quantos veículos existem registrados na tabela sales.products
-- por marca e ano do modelo. Ordene pela nome da marca e pelo ano do veículo
SELECT brand
	,model_year
	,count(model)
FROM sales.products
GROUP BY (
		brand
		,model_year
		)
ORDER BY (
		brand
		,model_year
		)

-- (Exercício 6) Conte quantos veículos de cada marca tem registrado na tabela sales.products
-- e mostre apenas as marcas que contém mais de 10 veículos registrados
SELECT brand
	,count(*)
FROM sales.products
GROUP BY (brand)
HAVING count(*) > 10
ORDER BY brand

-- EXERCÍCIOS seção 6 ########################################################################
-- (Exercício 1) Identifique quais as marcas de veículo mais visitada na tabela sales.funnel
SELECT pro.brand
	,count(*) AS visitas
FROM sales.funnel AS fun
LEFT JOIN sales.products AS pro ON fun.product_id = pro.product_id
GROUP BY pro.brand
ORDER BY visitas DESC

-- (Exercício 2) Identifique quais as lojas de veículo mais visitadas na tabela sales.funnel
SELECT sto.store_name
	,count(*) AS visitas
FROM sales.funnel AS fun
LEFT JOIN sales.stores AS sto ON fun.store_id = sto.store_id
GROUP BY sto.store_name
ORDER BY visitas DESC

-- (Exercício 3) Identifique quantos clientes moram em cada tamanho de cidade (o porte da cidade
-- consta na coluna "size" da tabela temp_tables.regions)
SELECT reg.size
	,count(*) AS contagem
FROM sales.customers AS cus
LEFT JOIN temp_tables.regions AS reg ON lower(cus.city) = lower(reg.city)
	AND lower(cus.STATE) = lower(reg.STATE)
GROUP BY reg.size
ORDER BY contagem