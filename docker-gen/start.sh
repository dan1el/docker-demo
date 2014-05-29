#!/bin/bash
sudo ./docker-gen -watch -notify "/etc/init.d/nginx reload" nginx-load_balancing.template /etc/nginx/sites-enabled/default
