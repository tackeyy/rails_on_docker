# rails_on_docker

RailsをDockerの上で動かすためのベースとなるファイルを用意したリポジトリです。    　   
READMEにそってコマンドを実行するだけでローカル環境に依存せずRailsを使用できる環境をセットアップできます。

ローカルにRubyやMySQLなどをインストールすることなくRailsを触ることができるため、　　    
Railsを触りたいけど環境構築でつまずつということがなくなります。（希望）

# Requirement & Instlation

## Command Line Tools for Xcode

` $ xcode-select --install `

[![https://gyazo.com/87a1eb54d146027e57c441edc4842827](https://i.gyazo.com/87a1eb54d146027e57c441edc4842827.png)](https://gyazo.com/87a1eb54d146027e57c441edc4842827)

1. 「インストール」ボタンをクリック
1. 使用許諾契約画面が表示されたら「同意する」をクリック

## Homebrew

` $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" `

## Git

` $ brew install git `

## Docker

` brew cask install docker `

# Instlation

## repository clone

```
$ cd ~ && mkdir dev && cd dev
$ git clone https://github.com/tackeyy/rails_on_docker.git `
```

## Rails quickstart

```
$ docker-compose run rails_on_docker rails new . --force --database=mysql --skip-bundle
$ cp -f templates/config/database.yml config/
$ docker-compose build
$ docker-compose up
$ open http://localhost:3000/
```

<a href="https://gyazo.com/84ec0a07ae2f34a9ddc99f74778a29f0"><img src="https://i.gyazo.com/84ec0a07ae2f34a9ddc99f74778a29f0.png" alt="https://gyazo.com/84ec0a07ae2f34a9ddc99f74778a29f0" width="1440"/></a>

いえーい　٩(ˊᗜˋ*)و

# Refs

https://docs.docker.com/compose/rails/  
https://docs.docker.com/compose/install/  
http://dev.classmethod.jp/server-side/ruby-on-rails-on-docker/
