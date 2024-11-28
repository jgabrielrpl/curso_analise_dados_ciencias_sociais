###
### Script com o objetivo de apresentar a Aula 2 do curso
###

###
##
# Informacoes iniciais ----

library(tidyverse)

# . ----
###
##
# IMPORTAÇÃO----

###
##
## Manual ----

library(readxl)
bd_1 <- read_excel("scripts/material_aula_1/material/bd_1.xlsx")
rm(bd_1)

###
##
## Pacote ----

# install.packages("electionsBR")
library(electionsBR)
leg_df_2018 <- legend_fed(year = 2018,uf="DF")

# . ----
###
##
# VISUALIZANDO A BASE ----

View(leg_df_2018) # Olhar a base de dados
glimpse(leg_df_2018) # Nomes das variaveis
names(leg_df_2018) # Nomes das variaveis
str(leg_df_2018)

rm(leg_df_2018)

# Voltar ao Slide da aula 2

# . ----
# PREPARACAO DA BASE ----

## Select ----

# A função select do tidyverse (especificamente do pacote dplyr) é usada para selecionar
# colunas específicas de um data frame. Ela permite incluir ou excluir colunas, facilitando
# a manipulação e a visualização dos dados. A sintaxe é simples, permitindo passar os nomes
# das colunas desejadas ou usar funções auxiliares como starts_with(), contains(), etc.,
# para filtrar as colunas dinamicamente.

### Ex.1 ----

library(readxl)
bd_1 <- read_excel("scripts/material_aula_1/material/bd_1.xlsx")
View(bd_1) # Olhar a base de dados
glimpse(bd_1)

bd_filtro <- bd_1 |> 
  select(sexo,nota)

rm(bd_filtro)

### Ex.2 ----

bd_filtro_2 <- bd_1 |> 
  select(-sexo)

rm(bd_filtro_2)

### Ex.3 ----

bd_filtro_3 <- bd_1 |> 
  select(aluno,
         starts_with('data_'))

rm(bd_filtro_3) 

## Filtro ----

# A função filter do tidyverse (pacote dplyr) é usada para filtrar linhas de um data
# frame com base em condições lógicas. Ela permite selecionar observações que atendem a
# critérios específicos, como comparações entre valores ou combinações de condições 
# com operadores lógicos. É útil para restringir os dados a subconjuntos relevantes para a análise.

### Ex.1 ----

# Filtrar apenas os casos de alunos

m <- bd_1 |> 
filter(sexo == "m")

rm(m)

### Ex.2 ----

# Filtrar apenas os casos de alunos e que passaram na prova

m_nota_maior <- bd_1 |> 
  filter(sexo == "m" &  nota >= 5)

rm(m_nota_maior)

## Mutate ----

### Ex.1 ----

bd_1 <- bd_1 %>%
  mutate(passou = ifelse(nota >= 5, 1, 0) # Criacao de uma variavel dummy. Indicativa
  )

### Ex.2 ----

library(stringi)

bd_1_nomes <- bd_1 |> 
  mutate(aluno = stri_trans_general(aluno, "Latin-ASCII")) |>
  mutate(aluno = toupper(aluno))

rm(bd_1_nomes)

## Arrange ----

bd_1_ord <- bd_1 %>%
  arrange(desc(nota))

rm(bd_1_ord)

## Juntar ----

Ir para os slides

bd_2 <- read_excel("scripts/material_aula_1/material/bd_2.xlsx")

b_1_1 <- left_join(bd_1,
                   bd_2,
                   by = join_by(aluno))

rm(bd_2)

## Resumir ----

# Qual é o percentual dos alunos que passaram?

r_1 <-
  bd_1 |> 
  mutate(passou == as.character(passou)) |> 
  group_by(passou) |> 
  summarise(conta = n()) |> 
  ungroup() |> 
  mutate(soma_conta = sum(conta),
         perc = conta/soma_conta * 100,
         passou = ifelse(passou == 1, "Passou", "Não Passou"))


# . ----
###
##
# AULA PRATICA ----

##
## 1. Abra o projeto ----

# Veja o documento: abrir_projeto 

##
## 2. Carregue os pacotes ----

# Pense. Como se carrega os pacotes?

# Resposta:

Apague isto e digite aqui o codigo.

##
## 3. Importe a base de dados ----

library(readxl)
bd_1 <- read_excel("scripts/material_aula_1/material/bd_1.xlsx")

# Erro 1

bd_erro_1 <- read_excel("scripts/material_aula_1/material/bd_1.xsx")

# Pense. Porque a base nao abriu?

# Resposta:

# Erro 2

bd_erro_2 <- rea_excel("scripts/material_aula_1/material/bd_1.xsx")

# Pense. Porque a base nao abriu?

# Resposta:

Apague isto e digite aqui o codigo.
rm(bd_erro_2) # Para apagar o objeto

# Erro 3

bd_erro_3 <- rea_excel("scripts/material/bd_1.xsx")
rm(bd_erro_3)
rm(bd_1)

## 4. Selecionar ----

# Abrir banco

library(readxl)
bd_1 <- read_excel("scripts/material_aula_1/material/bd_1.xlsx")
#View(bd_1) # Olhar a base de dados
#glimpse(bd_1)

# Pense.
  # 1. Pense sobre um tipo de seleção de variavel que queira fazer no banco.
  # 2. Escreva o que quer fazer
  # 3. Baseado na explicacao que se inicia na linha 43 produza um codigo

# Respostas:

  # Resposta 1:

  # Resposta 2:

  # Resposta 3:

## 5. Filtrar ----

# Pense.
  # Filtre os casos de alunas

# Resposta:

## 6. Filtrar e Selecionar ----

# Pense.
  # 1. Seleciona os alunos e as notas
  # 2. Filtre Apenas as alunas que nao passaram na prova

# Resposta:

## 7. Transformar ----

# Pense.
  # 1. Faça um nova variavel que indique os alunos que nao passaram na prova

# Resposta:

## 8. Juntar  ----

# Pense.
  # 1. Abra o banco 3, que contém a informação da idade dos alunos.
  # 2. Integre os dados do banco 3 ao banco 1, adicionando a informação de idade.

# Resposta:


## 9. Sumarisar  ----

# Pense.
  # 1. Faça a média das notas da turma. 
    # mean()
  # 2. Faça o percentual de aprovados dividido por sexo.

  # Resposta 1:

  # Resposta 2:

