```bash
lxc profile device add default root disk path=/ pool=default
```


```bash
cat <<EOF | lxd init --preseed
config:
  images.auto_update_interval: "24"
networks:
- name: lxdbr0
  type: bridge
  config:
    ipv4.address: auto
    ipv6.address: none
EOF
```
