# vsftpd Module

## Overview

This module install and configure vsftpd ftp server.

## Usage

Default configuration:

```puppet
include vsftpd
```

Custom configuration:

```puppet
class { 'vsftpd':
    anonymous_enable       => 'NO',
    local_enable           => 'YES',
    write_enable           => 'YES',
    local_umask            => '022',
    dirmessage_enable      => 'YES',
    xferlog_enable         => 'YES',
    connect_from_port_20   => 'YES',
    xferlog_std_format     => 'YES',
    chroot_local_user      => 'YES',
    listen                 => 'YES',
    listen_ipv6            => 'NO',
    pam_service_name       => 'vsftpd',
    userlist_enable        => 'YES',
    tcp_wrappers           => 'YES',
    allow_writeable_chroot => 'YES',
    pasv_enable            => 'YES',
    pasv_min_port          => '1024',
    pasv_max_port          => '1048',
    pasv_address           => '127.0.0.1',
}
```

SSL integration

```puppet
    rsa_cert_file           => '/etc/ssl/private/vsftpd.pem',
    rsa_private_key_file    => '/etc/ssl/private/vsftpd.pem',
    ssl_enable              => 'YES',
    allow_anon_ssl          => 'NO',
    force_local_data_ssl    => 'YES',
    force_local_logins_ssl  => 'YES',
    ssl_tlsv1               => 'YES',
    ssl_sslv2               => 'NO',
    ssl_sslv3               => 'NO',
    require_ssl_reuse       => 'NO',
    ssl_ciphers             => 'HIGH',
```
