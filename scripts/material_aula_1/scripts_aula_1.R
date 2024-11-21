###
### Script com o objetivo de apresentar a Aula 1 do curso
###

###
##
# Informacoes iniciais ----

# Informacao: As suas quatro telas 

numero <- 13
rm(numero)

# Informacao: O que é Script?
  # É o norte. É o seu roteiro.

# Informacao: Organizar o Summário

##.  ----
# Separacao 1 ----
## Separacao 2 ----
### Separacao 3 ----
##.  ----
## Separacao 4 ----

# Parece irelevante mas nao é. 
  # Exemplo do relatorio brics.

##.  ----
###
##
# Com o que trabalharemos ----

# Banco de dados 

library(readxl)
bd_1 <- read_excel("scripts/material_aula_1/material/bd_1.xlsx")

# Graficos 

# Tabelas


##.  ----
###
##
# Projeto ----

- Trabalhar sempre com o projeto

###
##
# Carregamento de livrarias ----

# O que são livrarias?

# É livre ! Um carregamente de habilidades!

library(tidyverse)

# . ----
###
##
# Exemplo pratico ----

###
##
## 1. Carregar base ----

# Importar um banco de dados

library(readxl)
bd_1 <- read_excel("scripts/material_aula_1/material/bd_1.xlsx")

###
##
## 2. Construir um indicador  ----

# Mecanimo: Pense na pergunta, quanto tiver certeza, programe.

# Quem passou na prova?

bd_1 <- bd_1 %>%
  mutate(passou = ifelse(nota >= 5, 1, 0) # Criacao de uma variavel dummy. Indicativa
         )

###
##
## 3. Produzir analises ----

# Qual é o percentual dos alunos que passaram?

# Qual é o percentual dos alunos que passaram, de acordo com o sexo?

###
##
## 4. Explotar a analise ---- 



