###
### Script com o objetivo de apresentar a Aula 3 do curso
###

###
##
# Informacoes iniciais ----

library(tidyverse)
library(readxl)

# . ----
###
##
# AULA PRATICA 2 ----

##
## 1. Abra o banco de dados  ----

banco <- read_excel("scripts/material_aula_3/material/weyland data.xlsx", 
                    col_types = c("numeric", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "text", "text", "text", 
                                  "text", "text", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "text", "numeric", "numeric", 
                                  "numeric", "text"))

##
## 2. Consulte o livro de códigos ----

##
## 3. Faça uma tabela com os países com líderes populistas ----

# Ajuda 

# Utilize o select

# Resposta:

##
## 4. Em quais regiões concentram-se a maior quantidade de líderes populistas? ----

# Ajuda 

# Utilize a função 'group_by' para agrupar os dados e, em seguida, aplique a função de contagem (n()) para contar cada tipo de populismo. 

# Consulte o script 2, linha 150, para orientação.

# Resposta:

##
## 5. Qual é a média da pontuação democrática eleitoral (electoral democracy) após o fim do governo dessas lideranças? ----

# Ajuda 

# Utilize a função 'group_by' para agrupar os dados e, em seguida, aplique a função de média (mean()) para calcular a média da pontuação democrática eleitoral (electoral democracy) após o fim do mandato. 

# Resposta:


##
## 6. Quais são os percentuais de casos de cada tipo existente de populismo? ----

# Utilize a função 'group_by' para agrupar os dados e, em seguida, aplique a função de contagem (n()) e mais algumas outras transformações para calcular os percentuais de cada tipo de populismo. 

# Consulte o script 2, linha 150, para orientação.

# Resposta:
