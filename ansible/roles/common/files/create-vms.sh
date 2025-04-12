#!/bin/sh

# Create VMs for master and worker nodes
qm create 100 --name k8s-master --memory 4096 --cores 4 --net0 virtio,bridge=vmbr0
qm create 101 --name k8s-worker1 --memory 8192 --cores 8 --net0 virtio,bridge=vmbr0
