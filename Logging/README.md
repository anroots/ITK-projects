# Logging

College lab assignment about logging and monitoring.

## Assignment

- Install the ELK stack on server `eik-elk`
- Install a web server on server `eik-web`
- Have the web server log its error and access logs to ELK
- Have both servers send their syslog to ELK
- Install Datadog agent on both servers

Following is a set of instructions for solving the Assignment.  Server install and configuration is automated via Ansible.

## Provisioning

- Provision two new VMs in DigitalOcean (2GB RAM, Ubuntu 16.04)
- Install Python 2.7 to both servers via SSH (prerequisite for Ansible)

```bash
ssh root@server-ip apt-get install -y python
```

## Running Ansible

Install required 3rd party Ansible roles

```bash
ansible-galaxy install -r requirements.yml --force -p roles 
```

Export Datadog key and run Ansible

```bash
DD_API_KEY='xxx' ansible-playbook -i hosts site.yml
```

![Starting Datadog Agents](/doc/agents-started.png)

## Links

- https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-elasticsearch-on-ubuntu-16-04
- https://docs.ansible.com/