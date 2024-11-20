# HTTPD Installation and Configuration

## Installing HTTPD Server using YUM

To install the `httpd` server, use the following command:

```bash
sudo yum install httpd -y
```

## Starting and Enabling HTTPD Service

To start the `httpd` service, use the following command:

```bash
sudo systemctl start httpd
```

To enable the `httpd` service to start on boot, use the following command:

```bash
sudo systemctl enable httpd
```

## Configuring Firewall to Allow HTTP and HTTPS Traffic

To allow HTTP traffic through the firewall, use the following command:

```bash
sudo firewall-cmd --permanent --add-service=http
```

To allow HTTPS traffic through the firewall, use the following command:

```bash
sudo firewall-cmd --permanent --add-service=https
```

Reload the firewall to apply the changes:

```bash
sudo firewall-cmd --reload
```

## Verifying Installation and Configuration

To verify that the `httpd` service is running, use the following command:

```bash
sudo systemctl status httpd
```

To verify that the firewall is allowing HTTP and HTTPS traffic, use the following command:

```bash
sudo firewall-cmd --list-all
```
