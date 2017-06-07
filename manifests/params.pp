class vsftpd::params {
  if $::osfamily == 'RedHat' {
    $configfile = '/etc/vsftpd/vsftpd.conf'
  }
  elsif $::osfamily == 'Debian' {
    $configfile = '/etc/vsftpd.conf'
  }
}
