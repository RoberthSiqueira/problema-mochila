# Algoritmo da Mochila

Otimização de Sistemas Computacionais

Acessar a aplicação [clicando aqui](https://otm-knapsack.herokuapp.com/).

Para executar localmente a aplicação é necessário que tenha instalado o Ruby e o Rails em sua máquina.
- Ruby, 2.4
- Rails, 5.1

Abra o terminal e execute os comandos:

Instalar gerenciador de pacos do macOS:
```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
````

Instalar Ruby:
```
$ brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby
$ rbenv install 2.4.2
$ rbenv global 2.4.2
$ ruby -v
````

Instalar Rails:
```
$ gem install rails -v 5.1.4
$ rails -v
# Rails 5.1.4
````

Após o clone, execute os seguintes comandos no diretório do projeto:

Instale as dependências do pejeto:
```
$ bundle install
```

Inicar o servidor local do Rails:
```
$ rails s
```

#### Limitação
- Os pesos devem ser inteiros e diferentes para o algoritmo da Mochila.

#### Servidor de Hospedagem
Heroku

### Alunos
- [Lucas Faria](https://github.com/lucas-faria-faria)       501615
- [Roberth Siqueira](https://github.com/RoberthSiqueira/)  501604
