class suricata (
	$packageName = $suricata::params::packageName,
	$serviceName = $suricata::params::serviceName,
	$interface = $suricata::params::interface,
) inherits suricata::params {
	
	#include apt
	
	class { 'suricata::prepare': } ->
	class { 'suricata::install':} ->
	class { 'suricata::config':} ~>
	class { 'suricata::service':} ->
	Class['suricata']	
}
