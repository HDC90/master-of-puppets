node 'client.puppetmichael.org' {
    $proftpd_chroot         =  false
    $proftpd_port           =  21
    $proftpd_maxinstances   =  25
    # include lamp
    # include sshd
    include motd
    include proftpd

}
