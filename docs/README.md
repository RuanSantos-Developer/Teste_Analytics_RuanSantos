![Logo Quod](https://media.licdn.com/dms/image/v2/D4D12AQGyh3Fqd8fRqw/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1731338204044?e=2147483647&v=beta&t=_s1cDhpEjud5C_hLV3s7gA5s58TMrQeZRXslzYWH-lU)



Abaixo está a versão corrigida e precisa do `README.md`.

-----

# Teste Analytics - Ruan Santos

-----

# 📋 Sobre o Projeto

Este repositório contém a resolução do teste técnico para a vaga de **Estagiário de Analytics na Quod**. O projeto abrange análise de dados de vendas utilizando Python, SQL e visualização de dados, demonstrando habilidades em limpeza, exploração e interpretação de dados.
Período de desenvolvimento: 02/10/2024 - 13/10/2024

# 📁 Estrutura do Repositório

```
  Teste_Analytics_RuanSantos/
  ├── docs/
  │   ├── README.md
  │   └── relatorio_insights.md
  ├── notebooks/
  │   ├── Dataframes/
  │   │   ├── data_clean.csv
  │   │   └── vendas_raw.csv
  │   ├── criacao_dataset.ipynb
  │   ├── limpeza_e_analise.ipynb
  │   └── visualizacoes.ipynb
  ├── sql/
  │   ├── consultas_sql.sql
  │   └── criacao_db.sql
  ├── .gitignore
  └── requirements.txt
```

# 🚀 Como Executar

### Pré-requisitos

  - Python 3.8+
  - pip (gerenciador de pacotes)
  - IDE recomendada para replicação do projeto:  Visual Studio Code

**Instalação:**

  - git clone **[https://github.com/RuanSantos-Developer/Teste\_Analytics\_RuanSantos.git](https://github.com/RuanSantos-Developer/Teste_Analytics_RuanSantos.git)**

# Instale os requisitos

```
 terminal
 pip install -r requirements.txt
```

# 💻 Executando os Scripts

**Observações:**

  - Caso não queira executar uma celula de cada vez, clique na opção de **"Run All"** que irá executar o notebook inteiro.

### Ordem de execução obrigatória:

  - **Criação do dataset:**
    criacao\_dataset.ipynb

  - **Limpeza e Analise:**
    limpeza\_e\_analise.ipynb

  - **Visualização:**
    visualizacoes.ipynb

# 📊 Dependências

#### Manipulação e Análise de Dados

  - pandas==2.3.1
  - numpy==2.2.6

#### Visualização de Dados

  - matplotlib==3.10.5
  - seaborn==0.13.2

# 🔍 Metodologia e Suposições

### Simulação dos Dados

  - Período: 01/01/2023 a 31/12/2023

#### Características do Dataset:

  - Total de registros brutos: 3060
  - Total de registros após limpeza: 3000
  - Dataset simulado: Loja de construção e ferramentas
  - Categorias: Ferramentas, Elétrica, Hidráulica, Segurança e EPI, Jardinagem, Tintas e Acabamento, Construção e Estrutura
  - Distribuição de preços: R$2.00 até R$899.00

## Suposições adotadas:

  - Valores faltantes: Introduzidos intencionalmente para simular dados reais.
  - Duplicatas: **60 registros (2%)** duplicados inseridos para demonstrar o processo de limpeza.
  - Sazonalidade: Implementada **aleatoriamente**.
  - Distribuição de vendas: Implementada **aleatoriamente**.

#### SQL

  - Assumi criar o arquivo "criacao\_db.sql" que contem scripts para criação, inserção de um banco de dados e da tabela "data\_clean" para testes em SGBD.
  - **Em caso de testes recomendo o [SQLiteOnline](https://sqliteonline.com/) pela facilidade**

## Tratamento de Dados

#### Limpeza realizada:

  - Remoção de **60 duplicatas** identificadas.
  - Tratamento de **179 valores faltantes** em diversas colunas.
  - Conversão de tipos: `datetime`, `category`, `int64`.

# 📈 Principais Resultados

#### Parte 1: Análise de Dados

A análise revelou diferentes produtos líderes em volume de vendas e em receita gerada.

**Produto com maior volume de vendas (em quantidade):**

  - Produto: **Parafusadeira**
  - Quantidade vendida: **3.991 unidades**

**Produto com maior receita (em valor):**

  - Produto: **Caixa de água (500L)**
  - Total de vendas (Receita): **R$ 2.748.560,00**
  - A Parafusadeira, apesar de ser a mais vendida em unidades, ocupa o terceiro lugar em receita, com **R$ 1.712.139,00**.

## Tendências identificadas:

#### 1° Insight

  - **Crescimento consistente da receita ao longo do ano**

A receita total aumentou de forma geral de fevereiro a outubro de 2023, atingindo seu pico em **outubro**, com um faturamento de **R$ 435.555,30**.
Isso sugere uma tendência positiva de vendas, possivelmente impulsionada por sazonalidade (como aumento nas obras e reformas antes do fim do ano).

#### 2° Insight

  - **Quantidade vendida não segue exatamente a mesma tendência da receita**

Embora a receita tenha subido continuamente até outubro, a quantidade de itens vendidos oscilou — por exemplo, **setembro teve menos itens vendidos que agosto, mas gerou maior receita**.
Isso indica um aumento no preço médio de venda ou uma maior procura por produtos de alto valor agregado nesse período.

#### 3° Insight

  - **Outubro é o mês de melhor desempenho**

Com receita total de **R$ 435.555,30** e **13.784 produtos vendidos**, outubro representa o melhor desempenho do ano tanto em valor quanto em volume, sendo um mês estratégico para campanhas de marketing e reforço de estoque.

## Parte 2: Consultas SQL

```
 Listar o nome do produto, categoria e a soma total de vendas (Quantidade * Preço) para cada produto. 
 Ordene o resultado pelo valor total de vendas em ordem decrescente. 

 SELECT
     nome,
     categoria,
     SUM(quantidade * preco_unitario) AS TotalVendas
 FROM
     data_clean
 GROUP BY
     nome, categoria
 ORDER BY
     TotalVendas DESC;
```

# 

```
 Identificar as 3 categorias que venderam menos no mês de junho de 2023. 

 SELECT 
     categoria AS categoria_produto,
     SUM(quantidade) AS total_quantidade_vendida
 FROM 
     data_clean
 WHERE 
     strftime('%Y-%m', data) = '2023-06'
 GROUP BY 
     categoria_produto
 ORDER BY 
     total_quantidade_vendida ASC
 LIMIT 3;
```

## Parte 3: Relatório e Insights

Confira o relatório completo em docs/relatorio\_insights.md

**Resumo executivo:**

  - O relatório conclui que a empresa apresenta crescimento consistente, mas pode otimizar significativamente a rentabilidade e a eficiência operacional através do planejamento sazonal, mix de produtos estratégico e ações de marketing direcionadas.

# 📊 Visualizações

### As principais visualizações geradas incluem:

  - Tendência de Vendas Mensais: Gráfico de linha mostrando evolução das vendas mensais por quantidade

  - Tendência de Vendas Mensais: Gráfico de linha mostrando evolução das vendas mensais por receita

  - Vendas mensais por categoria: Mapa de calor mostrando as vendas mensais por receita

**Todas as visualizações estão disponíveis em visualizacoes.ipynb**

# 🛠️ Tecnologias Utilizadas

  - Linguagem: Python
  - Análise de Dados: Pandas, NumPy
  - Visualização: Matplotlib, Seaborn
  - Banco de Dados: SQLite
  - Controle de Versão: Git/GitHub
  - Documentação: Markdown

# 📝 Observações Técnicas

**Desafios Encontrados**

  - Criação do script para simulação do dataset, inserção de valores nulos e inserção de duplicadas sem enviesar o dataset.
  - Retirar insights relevantes para tomadas de decisão

# 👤 Autor

Ruan Oliveira dos Santos

Email: ruan.oliveira.profissional@gmail.com

LinkedIn: [https://www.linkedin.com/in/ruan-santos-780442218/](https://www.linkedin.com/in/ruan-santos-780442218/)

GitHub: @RuanSantos-Developer

# 📄 Licença

Este projeto foi desenvolvido como parte de um processo seletivo e é destinado apenas para fins avaliativos.

# 🙏 Agradecimentos

Agradeço à Quod pela oportunidade de participar deste processo seletivo e demonstrar minhas habilidades em Analytics.

Data de entrega: 13/10/2024

