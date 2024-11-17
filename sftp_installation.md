# SFTP Installation and Configuration

## Installing SFTP Server using YUM

To install the `sftp` server, use the following command:

```bash
sudo yum install openssh-server -y
```

## Starting and Enabling SFTP Service

To start the `sshd` service, use the following command:

```bash
sudo systemctl start sshd
```

To enable the `sshd` service to start on boot, use the following command:

```bash
sudo systemctl enable sshd
```

## Configuring Firewall to Allow SFTP Traffic

To allow SFTP traffic through the firewall, use the following command:

```bash
sudo firewall-cmd --permanent --add-service=ssh
```

Reload the firewall to apply the changes:

```bash
sudo firewall-cmd --reload
```

## Verifying Installation and Configuration

To verify that the `sshd` service is running, use the following command:

```bash
sudo systemctl status sshd
```

To verify that the firewall is allowing SFTP traffic, use the following command:

```bash
sudo firewall-cmd --list-all
```

![SFTP](https://media.giphy.com/media/3oEjI6SIIHBdRxXI40/giphy.gif)
