#!/usr/bin/env bash

apt-get update
apt-get upgrade -y

#install ansible
apt-get install -y software-properties-common build-essential g++ erlang-base erlang-dev erlang-eunit erlang-nox libmozjs185-dev libicu-dev libcurl4-gnutls-dev libtool
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible
