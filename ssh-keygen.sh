#!/bin/bash


ssh-keygen -t ed25519 -C "for Ansible"

ssh-keygen -t ed25519 -C "for root user"

ssh-copy-id -i /root/.ssh/ansible.pub 192.168.52.136  # mubeen@192.168.52.136

ssh-copy-id -i /root/.ssh/id_ed25519.pub 192.168.52.136  # mubeen@192.168.52.136

