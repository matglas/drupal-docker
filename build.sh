#!/usr/bin/env bash

docker build --tag vdmi/base ./base
docker build --tag vdmi/php ./php
docker build --tag vdmi/php-drupal ./php-drupal
docker build --tag vdmi/apache ./apache