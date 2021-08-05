#!/bin/bash
curl https://releases.rancher.com/install-docker/19.03.sh | sh
apt install -y open-iscsi
sudo docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run  rancher/rancher-agent:v2.5.9 --server https://18.209.176.188 --token cvbdqwf6gcqwzf67kbxvjpsr9p9dcc9ccc9zspn7szgp6cd8fwfbkm --ca-checksum 720daf954df4e605e36f6fa6d9f415c0792c364039d1f63f7129fb5792f7eb34 --etcd --controlplane --worker