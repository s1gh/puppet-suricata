class suricata::service {
	service { $suricata::serviceName:
		ensure => running,
		enable => true,
		hasstatus => true,
		hasrestart => true,
	}
}
