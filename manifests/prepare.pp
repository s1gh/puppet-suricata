class suricata::prepare {
	package { 'ethtool':
		ensure => installed,
	}
	package {'libpcre3':
		ensure => installed,
	}
	package {'libpcre3-dbg':
		ensure => installed,
	}
	package {'libpcre3-dev':
		ensure => installed,
	}	

	exec { 'set_promiscuous_mode':
		command => "/sbin/ifconfig ${suricata::interface} promisc"
	}
}
