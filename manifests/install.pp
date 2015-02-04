class suricata::install {
	#apt::ppa{ 'ppa:oisf/suricata-stable': } ~>
	
	package { $suricata::packageName:
		ensure => present,
	}
}
