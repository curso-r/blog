---
title: "O Zen do R (Parte 1)"
date: "2019-07-02"
tags: ["Zen do R"]
categories: ["divulgação"]
image: "images/posts/banner/zen-do-r-intro.jpeg"
author: ["Caio"]
summary: "O primeiro post em uma série sobre o nosso novo livro!
Introduzindo O Zen do R."
type: "featured"
featuredImage: "images/featured-post/feat-zen.jpg"
---

Neste post, apresentamos a todos a nossa primeira tentativa de escrever um
livro: [*O Zen do R*](https://curso-r.github.io/zen-do-r/)! Durante as próximas
semanas, todas as quartas, traremos para o nosso blog os capítulos que já
escrevemos do livro e responderemos qualquer pergunta sobre o conteúdo.

No espírito de [outros](https://r4ds.had.co.nz/) [livros](https://r-pkgs.org/)
feitos em bookdown, [*O Zen do R*](https://curso-r.github.io/zen-do-r/) está
disponível para consulta gratuitamente e continuará sendo expandido com o tempo.
Ele tem poucos tópicos por enquanto, então estamos abertos a sugestões de outros
conteúdos sobre os quais escrever!

Sem mais delongas, o primeiro capítulo de
[*O Zen do R*](https://curso-r.github.io/zen-do-r/)...

# Introdução

*O Zen do R* tem o objetivo de ser um livro sobre programação para
não-programadores. Atualmente muitas pessoas de diferentes áreas do conhecimento
acabam precisando usar a linguagem R por causa do seu grande potencial para
programação estatística, mas ficam perdidas depois que aprendem o básico sobre a
linguagem. Nesse sentido, este é um livro para "não-programadores" no que se
refere a treinamento formal; isto não é uma introdução ao R, mas sim um guia
sobre como usar o R de forma eficiente no dia-a-dia. *O Zen do R* também
pretende destoar dos manuais mais secos e técnicos sobre programação, utilizando
uma linguagem leve e acessível justamente porque parte-se do princípio de que
ele será utilizado em conjunto com algum outro texto (seco e técnico) sobre como
de fato programar em R.

A escolha do R é parcialmente arbitrária. Nada impede de você usar Python para
a análise de dados, mas ao longo de alguns anos de experiência os autores
notaram que o fato de o R ter sido feito com análise de dados em mente acaba
sendo uma vantagem muito difícil de ignorar. Fora isso, o `tidyverse`, as
infinitas ferramentas do RStudio e o engajamento da comunidade fazem com que
nós achemos o R a verdadeira linguagem do *data science*.

Por isso, *O Zen do R* é um guia para acalmar os nervos daqueles que se
aventuram pela primeira vez em um grande projeto em R.

## Sobre o livro

A grande piada do título é que o caminho para o fluxo ideal de programação é
análogo ao caminho descrito pelo Budismo para a libertação do espírito.
Parece muito estranho que essas duas coisas tenham alguma relação, mas a vida
é uma boa metáfora para muitos processos que encontramos no dia-a-dia!

### O que você vai aprender

Essencialmente você vai aprender a usar dois pacotes e como trabalhar com quatro
aspectos do processo de análise de dados: ambiente, versões, dados e arquivos.
Não é necessário ler o livro em ordem porque cada uma dessas quatro sessões são
completamente independentes.

Os assuntos abordados são, em ordem:

- .RData e .Rhistory: como fazer com que o RStudio não guarde nada que você fez
para que você não fique mal acostumado;
- Rproj e diretórios: como usar o conceito de "projeto" para organizar seu
trabalho e não se perder nos diretórios;
- Git e Github: como usar ferramentas de controle de versão para que você
não corra o risco de perder seu progresso;
- Packrat: como usar o pacote `packrat` para manter suas dependências em ordem
e atualizadas;
- Funções e dependências: como organizar arquivos, funções e dependências para
maximizar a reprodutibilidade do código;
- Pacotes: como e porquê transformar um projeto em um pacote, como documentá-lo
e como criar testes unitários;
- Data e data-raw: como organizar seus dados e scripts de tratamento em pastas
com objetivos claros e distintos.

Sinta-se livre para pular todos os tópicos sobre os quais você sentir que já
sabe o suficiente. Mas não se iluda, porque nenhum dos tópicos é inútil ou pode
ser simplesmente ignorado; quanto maior for um projeto (seja uma tese de
mestrado ou uma análise de dados médicos), mais necessários serão os tópicos
mais avançados.

## O que você não vai aprender

Primeiramente, você não vai aprender a programar R. Esse assunto é extremamente
extenso e já existem livros o suficiente para ajudar com isso (vide
[R for Data Science](https://r4ds.had.co.nz/)), então não vou me preocupar
com os detalhes do código ou com qual guia de estilo seguir.

Se você gosta de fazer códigos longos e velozes usando o `base-r`, se você
ama as pipelines do `tidyverse`, se você paraleliza todos os seus loops...
Nada disso importa aqui; não vou dizer qual é o melhor jeito de programar[^1].
Aqui você vai conhecer somente as melhores ferramentas para **organizar o seu
fluxo de programação**.

[^1]: E também não tenho paciência para entrar em mais nenhum debate "base vs. tidyverse"

Apesar de terem nomes parecidos, *O Zen do R* e *O Zen do Python* são diferentes
justamente por causa disso. O livro do Python pretende dar sugestões de como
organizar e escrever o seu código, o que não será feito aqui.

## Pré-requisitos

Como talvez já tenha ficado claro, um dos principais pré-requisitos deste livro
é saber a programar pelo menos um pouco de R. Você não precisa ser um
profissional, mas, para ter a necessidade de melhorar o seu fluxo de análise,
você antes precisa estar fazendo alguma análise.

Fora isso, o segundo principal pré-requisito é um ambiente de desenvolvimento.
Grande parte das dicas do livro são baseadas em funcionalidades integradas ao
RStudio, então se você quiser tirar o maior proveito possível dos ensinamentos
talvez valha à pena
[instalar a IDE](https://www.rstudio.com/products/rstudio/download/). Ainda
no tocante ao R, você precisará ter instalado pelo menos os três pacotes a
seguir:

```{r, eval=FALSE}
# Conteúdo principal do livro
install.packages(c("usethis", "packrat"))

# Se você quiser reproduzir os exemplos
install.packages("devtools")
```

Você também precisa de um computador funcionando com um sistema operacional
razoavelmente moderno. E uma conexão à internet.

## Principais referências

*O Zen do R* se baseia em inúmeras referências que normalmente serão citadas
juntamente com o próprio conteúdo. Mas algumas mais gerais acabariam sendo
citadas o tempo todo e portanto acabarão ficando aqui:

- [R for Data Science](https://r4ds.had.co.nz/);
- [bookdown: Authoring Books and Technical Documents with R Markdown](https://bookdown.org/yihui/bookdown/);
- [usethis](https://usethis.r-lib.org/);
- [Packrat: Reproducible package management for R](https://rstudio.github.io/packrat/) e
- [O blog da Curso-R](https://www.curso-r.com/blog/).
