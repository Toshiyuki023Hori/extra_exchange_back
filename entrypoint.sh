#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /rails_app/tmp/pids/server.pid

# DockerfileのCMDで渡されたコマンド（→Railsのサーバー起動）を実行
exec "$@"
