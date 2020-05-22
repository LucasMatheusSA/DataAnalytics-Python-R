Montar Dataset

Sequência de comandos em R  para gerar dataset a partir dos microdados do INEP:



> setwd("C:/Users/LUCAS MATHEUS/Desktop/TCC/DADOS")
(seta diretório onde estão os microdados do INEP)

> library(data.table)
(carrega biblioteca de manipulação de grandes dados “data.table”)

> alunos2018 <- fread("DADOS_ALUNOS_2018.csv", select = c("TP_SITUACAO","CO_IES","TP_CATEGORIA_ADMINISTRATIVA","TP_ORGANIZACAO_ACADEMICA","TP_TURNO",
"TP_GRAU_ACADEMICO","TP_COR_RACA","TP_SEXO","NU_IDADE","IN_INGRESSO_VESTIBULAR","IN_INGRESSO_ENEM","IN_FINANCIAMENTO_ESTUDANTIL","TP_ESCOLA_CONCLUSAO_ENS_MEDIO"))
(carrega em “alunos2018” os microdados do INEP de 2018 com esses respectivas colunas)

> names(alunos2018)[1:13] <- c("ALUNO_SITUACAO","ALUNO_INEP_COD","INSTITUICAO_CATEGORIA_ADMINISTRATIVA","INSTITUICAO_ORGANIZACAO_ACADEMICA","CURSO_TURNO","ALUNO_GRAU_ACADEMICO","ALUNO_COR_RACA","ALUNO_SEXO","ALUNO_IDADE","ALUNO_INGRESSO_VESTIBULAR","ALUNO_INGRESSO_ENEM","ALUNO_FINANCIAMENTO_ESTUDANTIL","ALUNO_ESCOLA_CONCLUSAO_ENS_MEDIO")
(Mudar todos os nome das colunas para a nomenclatura padrão)

> alunos2017 <- fread("DADOS_ALUNOS_2017.csv", select = c("TP_SITUACAO","CO_IES","TP_CATEGORIA_ADMINISTRATIVA","TP_ORGANIZACAO_ACADEMICA","TP_TURNO","TP_GRAU_ACADEMICO","TP_COR_RACA","TP_SEXO","NU_IDADE","IN_INGRESSO_VESTIBULAR","IN_INGRESSO_ENEM","IN_FINANCIAMENTO_ESTUDANTIL","TP_ESCOLA_CONCLUSAO_ENS_MEDIO"))
(carrega em “alunos2017” os microdados do INEP de 2017 com esses respectivas colunas)

> names(alunos2017)[1:13] <- c("ALUNO_SITUACAO","ALUNO_INEP_COD","INSTITUICAO_CATEGORIA_ADMINISTRATIVA","INSTITUICAO_ORGANIZACAO_ACADEMICA","CURSO_TURNO","ALUNO_GRAU_ACADEMICO","ALUNO_COR_RACA","ALUNO_SEXO","ALUNO_IDADE","ALUNO_INGRESSO_VESTIBULAR","ALUNO_INGRESSO_ENEM","ALUNO_FINANCIAMENTO_ESTUDANTIL","ALUNO_ESCOLA_CONCLUSAO_ENS_MEDIO")
(Mudar todos os nome das colunas para a nomenclatura padrão)

> alunos <- rbind(alunos2018, alunos2017)
(Junta os dados contidos em “alunos2018” com “alunos2017” e coloca eles em “alunos”)

> rm(alunos2017)
(Remove o data frame “alunos2017” já que este não será mais necessário)

> rm(alunos2018)
(Remove o data frame “alunos2018” já que este não será mais necessário)

> alunos2016 <- fread("DADOS_ALUNOS_2016.csv", select = c("CO_ALUNO_SITUACAO","CO_IES","CO_CATEGORIA_ADMINISTRATIVA","CO_ORGANIZACAO_ACADEMICA","CO_TURNO_ALUNO","CO_GRAU_ACADEMICO","CO_COR_RACA_ALUNO","IN_SEXO_ALUNO","NU_IDADE_ALUNO","IN_ING_VESTIBULAR","IN_ING_ENEM","IN_FINANC_ESTUDANTIL","CO_TIPO_ESCOLA_ENS_MEDIO"))
(carrega em “alunos2016” os microdados do INEP de 2016 com esses respectivas colunas)

> names(alunos2016)[1:13] <- c("ALUNO_SITUACAO","ALUNO_INEP_COD","INSTITUICAO_CATEGORIA_ADMINISTRATIVA","INSTITUICAO_ORGANIZACAO_ACADEMICA","CURSO_TURNO","ALUNO_GRAU_ACADEMICO","ALUNO_COR_RACA","ALUNO_SEXO","ALUNO_IDADE","ALUNO_INGRESSO_VESTIBULAR","ALUNO_INGRESSO_ENEM","ALUNO_FINANCIAMENTO_ESTUDANTIL","ALUNO_ESCOLA_CONCLUSAO_ENS_MEDIO")
(Mudar todos os nome das colunas para a nomenclatura padrão)

> alunos <- rbind(alunos, alunos2016)
(Junta os dados contidos em “alunos” com “alunos2016” e coloca eles em “alunos”)

> rm(alunos2016)
(Remove o data frame “alunos2016” já que este não será mais necessário)

> alunos2015 <- fread("DADOS_ALUNOS_2015.csv", select = c("CO_ALUNO_SITUACAO","CO_IES","CO_CATEGORIA_ADMINISTRATIVA","CO_ORGANIZACAO_ACADEMICA","CO_TURNO_ALUNO","CO_GRAU_ACADEMICO","CO_COR_RACA_ALUNO","IN_SEXO_ALUNO","NU_IDADE_ALUNO","IN_ING_VESTIBULAR","IN_ING_ENEM","IN_FINANC_ESTUDANTIL","CO_TIPO_ESCOLA_ENS_MEDIO"))
(carrega em “alunos2015” os microdados do INEP de 2015 com esses respectivas colunas)

> names(alunos2015)[1:13] <- c("ALUNO_SITUACAO","ALUNO_INEP_COD","INSTITUICAO_CATEGORIA_ADMINISTRATIVA","INSTITUICAO_ORGANIZACAO_ACADEMICA","CURSO_TURNO","ALUNO_GRAU_ACADEMICO","ALUNO_COR_RACA","ALUNO_SEXO","ALUNO_IDADE","ALUNO_INGRESSO_VESTIBULAR","ALUNO_INGRESSO_ENEM","ALUNO_FINANCIAMENTO_ESTUDANTIL","ALUNO_ESCOLA_CONCLUSAO_ENS_MEDIO")
(Mudar todos os nome das colunas para a nomenclatura padrão)

> alunos <- rbind(alunos, alunos2015)
(Junta os dados contidos em “alunos” com “alunos2015” e coloca eles em “alunos”)

> rm(alunos2015)
(Remove o data frame “alunos2015” já que este não será mais necessário)

> alunos2014 <- fread("DADOS_ALUNOS_2014.csv", select = c("CO_ALUNO_SITUACAO","CO_IES","CO_CATEGORIA_ADMINISTRATIVA","CO_ORGANIZACAO_ACADEMICA","CO_TURNO_ALUNO","CO_GRAU_ACADEMICO","CO_COR_RACA_ALUNO","IN_SEXO_ALUNO","NU_IDADE_ALUNO","IN_ING_VESTIBULAR","IN_ING_ENEM","IN_FINANC_ESTUDANTIL","CO_TIPO_ESCOLA_ENS_MEDIO"))
(carrega em “alunos2014” os microdados do INEP de 2014 com esses respectivas colunas)

> names(alunos2014)[1:13] <- c("ALUNO_SITUACAO","ALUNO_INEP_COD","INSTITUICAO_CATEGORIA_ADMINISTRATIVA","INSTITUICAO_ORGANIZACAO_ACADEMICA","CURSO_TURNO","ALUNO_GRAU_ACADEMICO","ALUNO_COR_RACA","ALUNO_SEXO","ALUNO_IDADE","ALUNO_INGRESSO_VESTIBULAR","ALUNO_INGRESSO_ENEM","ALUNO_FINANCIAMENTO_ESTUDANTIL","ALUNO_ESCOLA_CONCLUSAO_ENS_MEDIO")
(Mudar todos os nome das colunas para a nomenclatura padrão)

> alunos <- rbind(alunos, alunos2014)
(Junta os dados contidos em “alunos” com “alunos2014” e coloca eles em “alunos”)

> rm(alunos2014)
(Remove o data frame “alunos2014” já que este não será mais necessário)

> saveRDS(alunos, file = "DatasetAlunos")
(Salvar o dateset gerado, o qual contém todos os dados de 2014 a 2018 como “DatasetAlunos”)



Seleção de dataset dos alunos 

Seleção dos dataset em R dos alunos que evadem instituições de ensino superior:

> setwd("C:/Users/LUCAS MATHEUS/Desktop/TCC/DADOS")
(seta diretório onde está o dataset “DatasetAlunos”)

> DatasetAlunos <- readRDS(“DatasetAlunos”)
(Carrega dataset no data frame “DatasetAlunos”)

> DatasetAlunosEvasao <- subset(DatasetAlunos, ALUNO_SITUACAO == 3 | ALUNO_SITUACAO == 4, select=c(ALUNO_SITUACAO,ALUNO_INEP_COD,INSTITUICAO_CATEGORIA_ADMINISTRATIVA,INSTITUICAO_ORGANIZACAO_ACADEMICA,CURSO_TURNO,ALUNO_GRAU_ACADEMICO,ALUNO_COR_RACA,ALUNO_SEXO,ALUNO_IDADE,ALUNO_INGRESSO_VESTIBULAR,ALUNO_INGRESSO_ENEM,ALUNO_FINANCIAMENTO_ESTUDANTIL,ALUNO_ESCOLA_CONCLUSAO_ENS_MEDIO))
(Seleciona no data frame “DatasetAlunosEvasao” os alunos do data frame “DatasetAlunos” que estão com matrícula trancada ou desvinculados no curso)

> DatasetAlunosEvasao[is.na(DatasetAlunosEvasao)] <- 0
(Faz um varedura no dataset  “DatasetAlunosEvasao” substituindo valores nulos por 0)

> saveRDS(DatasetAlunosEvasao, file = "DatasetAlunosEvasao")
(Salvar o dateset gerado como “DatasetAlunosEvasao”, o qual contém todos os alunos que evadiram o ensino superior)

> write.csv(DatasetAlunos, "DatasetAlunosEvasao.csv", row.names = FALSE)
(Salva o dataset gerado como “DatasetAlunosEvasao.csv”, o qual contém todos os alunos que evadiram o ensino superior)



