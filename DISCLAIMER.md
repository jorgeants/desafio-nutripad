# Desafio para Nutripad

Esse pequena aplicação converte um números inteiros em palavras (numeração por extenso). <br>
Testado no range de 0 a 999.999.999.999.

## Do que você precisa para rodar

### Com Docker Compose

- Docker
- Docker Compose

[Guia de instalação do Docker Compose](https://docs.docker.com/compose/install/)

### Rodando a aplicação com o Docker Compose

```bash
docker-compose build
```

```bash
docker-compose up
```

Em seu navegador acesse `http://localhost:3000/convert/numero_que_deseja_converter`

Exemplo: `http://localhost:3000/convert/222`

Em seu browser aparecerá escrito: **two hundred twenty two**

Para rodar os teste com docker compose, digite no seu terminal:

```bash
docker-compose run desafio-nutripad bundle exec rspec
```

### Em seu próprio ambiente de desenvolvimento configurado localmente

- Ruby >= 2.4.0
- Bundler >= 1.15.0

Instalando o Bundler caso não tenha:

```bash
gem install bundler
```

Instale as gems da aplicação e suas dependências rodando o comando:

```bash
bundle install
```

Para rodar em ambiente de desenvolvimento com [*shotgun*](https://rubygems.org/gems/shotgun):

```bash
shotgun config.ru
```

Acesse em seu navegador `http://localhost:9393/convert/numero_que_deseja_converter`

Para rodar com um webserver, utilizando [*thin*](https://rubygems.org/gems/thin):

```bash
bundle exec thin -R config.ru start -a 0.0.0.0 -p 3000
```
E acesse em seu navegador `http://localhost:3000/convert/numero_que_deseja_converter`

E finalmente para rodar os testes, digite em seu terminal:

```bash
bundle exec rspec
```
Ou simplesmente...
```bash
rspec
```

E verá tudo passando verdinho!
