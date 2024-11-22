###
### Script com o objetivo de apresentar a Aula 1 do curso
###

###
##
# Informacoes iniciais ----

library(tidyverse)

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

data.frame(Categoria = c("A", "B", "C", "D", "E"),
           Valor = c(23, 17, 35, 10, 42)) |> 
  ggplot(aes(x=Categoria, y=Valor)) +
  geom_bar(stat="identity", fill="steelblue") +  # geom_bar com stat="identity" para usar os valores fornecidos
  labs(title="Gráfico de Barras Exemplo", x="Categorias", y="Valores") +
  theme_minimal()

# Tabelas

library(gt)
bd_1 <- read_excel("scripts/material_aula_1/material/bd_1.xlsx")
bd_1 |> gt()
rm(bd_1)

##.  ----
###
##
# Projeto ----

# Trabalhar sempre com o projeto

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

r_1 <-
bd_1 |> 
  mutate(passou == as.character(passou)) |> 
  group_by(passou) |> 
  summarise(conta = n()) |> 
  ungroup() |> 
  mutate(soma_conta = sum(conta),
         perc = conta/soma_conta * 100,
         passou = ifelse(passou == 1, "Passou", "Não Passou"))

r_1 |> 
  ggplot(aes(x=passou, y=perc)) +
  geom_bar(stat="identity", fill="steelblue") +  # geom_bar com stat="identity" para usar os valores fornecidos
  labs(title="Gráfico 1. Rendimentos dos alunos e alunas", x= NULL, y="%") +
  theme_minimal()

rm(r_1)

# Qual é o percentual dos alunos que passaram, de acordo com o sexo?

r_2 <-
  bd_1 |> 
  mutate(passou == as.character(passou)) |> 
  group_by(sexo, passou) |> 
  summarise(conta = n()) |> 
  ungroup() |> 
  mutate(soma_conta = sum(conta),
         perc = conta/soma_conta * 100,
         passou = ifelse(passou == 1, "Passou", "Não Passou"),
         sexo = ifelse(sexo == "m", "Masculino", "Feminino"))

r_2 |> 
  ggplot(aes(x=passou, y=perc)) +
  facet_grid(cols = vars(sexo)) +
  geom_bar(stat="identity", fill="steelblue") +  
  labs(title="Gráfico 2. Rendimentos dos alunos e alunas, segundo o sexo", x= NULL, y="%") +
  theme_classic()

###
##
## 4. Explotar a analise ---- 

ggsave("scripts/material_aula_1/salvar_imagens/i_1.png",
       width = 22, height = 14, units = "cm")

rm(r_2, bd_1)
