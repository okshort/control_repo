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
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCcgiuFCgI7II11pLpN0uk3sq+Nq7J6F21iPNrBq/fT/CWXkbwxOG2cDgwdIUFn3nHlv8XEyG08GmN6khreSDbzoaO7y3ksBiQoZ5uQAhlt4tvFXs7cWDspUPSpKxBk9CFTIiCpIlpOF2hKRmtA4pLRHHzpjilIbwcGSMKh/ywDtz0XXmHkd+4luIP6THYA/s/FseQUuGcyJGoGnIi/NYJ5/CWPUSejjt1YXfoGH+05U6RQFrepJBNf77mNZikqQqo6xTUnq3BtJ2RSO6U9YAOIGXIe3r5paZ4QLiw0FJp1W201++R8q2NxHMeTMOXbZCrr2Q/kPBVHGAu0tn+0gc9P',
  }
}
