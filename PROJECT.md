## O projeto

Com o surgimento do trabalho remoto, às vezes queremos sair de casa para trabalhar em um espaço diferente. Ou então, durante uma viagem, precisamos de um lugar para trabalhar.
	    
Quem melhor do que nós mesmos para mapear esses lugares?  
	    
Esse projeto visa criar uma plataforma para inclusão de espaços de coworking em qualquer lugar no Brasil e no mundo.  
	    
*__Nota:__ Essa documentação está em desenvolvimento, e sofrerá alterações ao longo do tempo.*

## Tecnologias Adotadas

### Back-end

#### API

Usaremos [Go](https://go.dev) como tecnologia para o back-end.

Criaremos uma API REST usando um router simples, porém um dos mais famosos e utilizados, o [Gorilla Mux](https://github.com/gorilla/mux).

Nosso intuito é fazer uma API completa, com todos os endpoints CRUD, middleware de autenticação, CORS, cookies.

#### Banco de Dados

Vamos usar PostgreSQL como banco de dados.

É um banco versátil e robusto, com inúmeras opções de hospedagem, inclusive gratuitas.  

Mostraremos 3 serviços com deploy gratuito: [Supabase](https://supabase.com/), [Neon](https://neon.tech/) e [fly.io](https://fly.io/docs/postgres/).

#### Maps

Usaremos o [Leaflet](https://leafletjs.com/index.html) para mostrar os escritórios de coworking próximos ao usuário.

##### Por que Leaflet?

É uma alternativa ao Google Maps que possui as funcionalidades que precisamos e pode integrar com inúmeros mapas como Mapbox, OpenStreet, etc. 

#### Busca

Nossa busca usará o [Algolia](https://www.algolia.com/pt-br/). Um provedor de busca muito eficiente e também com um free tier generoso.

#### Cache

Vamos usar [Redis](https://redis.io/).

Mostraremos como utilizar o serviço gratuito da Redis Cloud e também da [Upstash](https://upstash.com/docs/redis/overall/getstarted).

#### Autenticação

Para autenticação, temos duas opções Open Source.

[Supabase Auth](https://supabase.com/auth) e [Keycloak](https://www.keycloak.org/).

A razão pela escolha do Keycloak é para mostrar como utilizar uma ferramenta de mercado, self-hosted.

### Front-end

Quebraremos o front-end em algumas partes.

#### Landing Page

Para a landing page usaremos [Astro](https://astro.build/) integrado ao [Strapi](https://strapi.io/).

Criaremos um sistema de componentes no Strapi e renderização no Astro, permitindo criar Landing Pages de forma rápida e sem a necessidade de desenvolver.

#### Blog

Nosso blog, onde usuários poderão publicar artigos a respeito de trabalho remoto, também usaremos Astro integrado à outro CMS.

#### Documentação

Para a nossa documentação de usuário e possíveis integrações para desenvoldores, usaremos Astro com o template [Starlight](https://starlight.astro.build/).

A princípio, usaremos arquivos Markdown no próprio repositório, mas podemos avaliar a migração para um repositório próprio controlado com um CMS, por exemplo, o [Tina](https://tina.io/).

#### Dashboard

Para o dashboard (nossa área logada) usaremos [Nuxt](https://nuxt.com/) com SSR.

A escolha de Nuxt é para mostrar a versatilidade do Vue para desenvolvimento web.

#### PWA

Construiremos um PWA para ser utilizado como Mobile App.

Usaremos essa abordagem, a princípio, pois trará as funcionalidades que os usuários precisam, sem a necessidade de um app nativo.

## O que esperar do projeto?

Ao final do projeto, teremos um aplicativo funcional aplicando todo o ciclo de desenvolvimento, da concepção ao deploy.