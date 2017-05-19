#!/bin/bash

# プロセスが正常終了しなかったときに、 server.pid ファイルが残ることがあるので削除する。
rm /myapp/tmp/pids/server.pid

bundle exec rails s -p 3000 -b '0.0.0.0' -e development
