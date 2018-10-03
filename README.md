# Ansible Role: nat-gateway

This Ansible Role sets up nginx and a squid proxy for a NAT gateway instance

## Using the role
### Installation
```
ansible-galaxy install nat-gateway
```

### Example Playbook
```
  - hosts: all
    roles:
      - nat-gateway
```

### Variables

See [`defaults/main.yml`](defaults/main.yml).

## Testing the role

### Dependencies
- Bundler 1.13.0+
- Ruby 2.3.0+
- Docker 1.12.0+
- Vagrant
- Virtualbox
- See [`Gemfile`](Gemfile)
