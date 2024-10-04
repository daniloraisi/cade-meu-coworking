# Cadê Meu Coworking

## O projeto

Com o trabalho remoto cada vez mais em evidência, às vezes queremos sair de casa
para trabalhar em um espaço diferente. Ou então, durante uma viagem, precisamos
de um lugar para trabalhar.

Quem melhor do que nós mesmos para mapearmos esses lugares?

Esse projeto visa criar uma plataforma para inclusão de espaços de coworking em
qualquer lugar no Brasil e no mundo.

É um projeto totalmente Open Source e sem fins lucrativos. O repositório
encontra-se sob o licenciamento GNU GPLv3, você pode ler mais a respeito no nosso
arquivo [LICENSE](./LICENSE).

_**Nota:** Essa documentação está em desenvolvimento, e sofrerá alterações ao
longo do tempo._

## Roadmap

Você encontrará o roadmap do projeto aqui mesmo no GitHub. Contaremos com um
roadmap e um board onde você pode acompanhar o progresso. É nele também que você
encontrará as issues abertas e poderá escolher algo para trabalhar junto.

## Tecnologias Adotadas

### Back-end

#### API

Nosso back end será desenvolvido em [Go](https://go.dev).

Criaremos uma API REST usando um router simples, porém um dos mais famosos e
utilizados, [Chi](https://go-chi.io/).

#### Banco de Dados

Vamos usar PostgreSQL como banco de dados.

É um banco versátil e robusto, com inúmeras opções de hospedagem, inclusive gratuitas.

Utilizaremos a [Supabase](https://supabase.com/) para hospedar nosso DB.
A escolha se dá por ser um projeto Open Source e termos a possibilidade de
subir nossa própria instancia.

#### Maps

Usaremos o [Leaflet](https://leafletjs.com/index.html) para mostrar os
escritórios de coworking próximos ao usuário.

##### Por que Leaflet?

É uma alternativa ao Google Maps que possui as funcionalidades que precisamos e
pode integrar com inúmeros mapas como Mapbox, OpenStreet, etc.

#### Busca

Nossa busca usará a [Typesense](https://typesense.org). Um provedor de
busca muito eficiente, Open Source e self-hosted.

A sincronização de dados do DB para o Typesense usará o [Airbyte](https://airbyte.com).
Também Open Source e self-hosted.

#### Cache

Vamos usar [Redis](https://redis.io/) através da [Upstash](https://upstash.com).

#### Autenticação

Para autenticação vamos de [Supabase Auth](https://supabase.com/auth).

Ferramenta Open Source, de simples utilização baseada no GoTrue da Netlify.

---

### Front-end

Quebraremos o front-end em algumas partes.

#### Landing Page

Para a landing page usaremos [Astro](https://astro.build/) integrado ao [Strapi](https://strapi.io/).

Criaremos um sistema de componentes no Strapi e renderização no Astro, permitindo
criar Landing Pages de forma rápida, editando apenas o conteúdo.

#### Blog

Em nosso blog, onde usuários poderão publicar artigos a respeito de trabalho
remoto, também usaremos Astro integrado ao Forem (plataforma que roda o Dev.to).

#### Documentação

Para a nossa documentação de usuário e possíveis integrações para desenvoldores,
usaremos Astro com o template [Starlight](https://starlight.astro.build/).

A princípio, usaremos arquivos Markdown no próprio repositório, mas podemos
avaliar a migração para um repositório próprio controlado com um CMS, por exemplo,
o [Tina](https://tina.io/).

#### Dashboard

Para o dashboard (nossa área logada) usaremos [Nuxt](https://nuxt.com/) com SSR.

A escolha de Nuxt é para mostrar a versatilidade do Vue para desenvolvimento web.

#### Mobile App

Construiremos nosso Mobile App utilizando Vue e [NativeScript](https://nativescript.org/).

## O que esperar do projeto?

Ao final do projeto, teremos um aplicativo funcional aplicando todo o ciclo de
desenvolvimento, da concepção ao deploy.

## FAQ

#### 1. É preciso ter alguma experiência?

Não. Você pode participar do projeto, seja Junior, Pleno ou Senior. O importante
é participar.

#### 2. Qual plataforma usaremos para comunicação?

As issues e roadmap do projeto estarão aqui no GitHub, mas também teremos um
Discord para trocar ideia e ajudar quem precisar! (O link do server será
disponibilizado em breve).

#### 4. Estou assumindo um compromisso ao pegar uma tarefa para executar?

Como todo projeto Open Source e mantido pela comunidade só é possível com
colaboração, a resposta é sim! Se você está disposto a participar, assuma o
compromisso e vá até o final.

#### 5. Preciso pagar algo para participar?

Absolutamente não!

#### 6. Existe algum tipo de remuneração envolvida?

Não. Esse projeto será mantido por voluntários, visa auxiliar quem está começando
como um “projeto escola”.

#### 7. A aplicação final será coloca em uso?

Sim, a aplicação será disponibilizada como um web app em <https://cademeucoworking.com.br>
e também com um app publicado na AppStore e Google Play.

#### 8. Quem manterá o projeto?

Em termos de manutenção a própria comunidade, esse é o intuito.

Em termos financeiros, visamos utilizar serviços gratuitos onde possível.

#### 9. Haverá algum tipo de sponsorship?

Priorizamos o uso de serviços e ferramentas gratuitas. Mas sim, teremos sponsorship
para quem quiser colaborar também financeiramente.
