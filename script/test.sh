#!/usr/bin/env bash
# -*- coding: utf-8 -*-

[ -r "script/bootstrap.sh" ] && source "script/bootstrap.sh"

ansible-playbook tests/test.yml -i tests/inventory --syntax-check
ansible-playbook -i tests/inventory tests/test.yml --connection=local