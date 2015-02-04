class suricata::params {
	case $::osfamily {
		'Debian': {
			$packageName = 'suricata'
			$serviceName = 'suricata'
			$interface = 'eth0'
	}
	default: {
		fail("${::operatingsystem} not supported!")
	}
    }
}
