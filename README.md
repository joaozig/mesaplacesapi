# `Mesa Places API`

Projeto desenvolvido em Rails para API do projeto [Mesa Places][mesaplaces]


## Passos para rodar a aplicação

Para rodar a aplicação você precisa clonar o repositório `mesaplacesapi` e instalar as dependências:

### Pré-requisitos

Você precisa do git para clonar o repositório do `mesaplacesapi`. Você pode baixar o git [clicando aqui][git].

### Clonando o `mesaplacesapi`

Clone o repositório `mesaplacesapi` usando git:

```
git clone https://github.com/joaozig/mesaplacesapi.git
cd mesaplacesapi
```

### Instalando as gems

Após baixar o projeto, execute o seguinte comando:

```
bundle install
```

### Configurando Banco de Dados

A aplicação usa PostgreSQL, lembre-se de preencher o arquivo `config/database.yml` com suas configurações locais, como username e password

### Configurando Envio de E-mail via Gmail

Para fins apenas de teste, a aplicação envia e-mails a partir de uma conta do gmail. Para isso, basta configurar um arquivo `.ENV` na raiz do projeto com os seguintes campos:

```
SMTP_EMAIL=seuemail@gmail.com
SMTP_PASSWORD=suasenha
```

### Rodando a aplicação

Após executar os passos anteriores, basta que você execute o seguinte comando para rodar a aplicação:

```
rails s -b 0.0.0.0
```

agora abra o navegador e acesse [`localhost:3000`][local-app-url].

[mesaplaces]: https://github.com/joaozig/mesaplaces
[git]: https://git-scm.com/
[local-app-url]: http://localhost:3000
