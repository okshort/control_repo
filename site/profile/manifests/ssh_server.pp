class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authroized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => '',
  }
}
