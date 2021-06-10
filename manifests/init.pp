# @summary Configure haproxy
#
# @example
#   include profile_haproxy
class profile_haproxy (
  $balancemember   = undef,
  $firewall        = undef,
  $listen          = undef,
  $sslcertificates = undef,
) {

  ## SETUP SYSCTL ? e.g. ip forward, ip_nonlocal_bind, etc

  ## SETUP FIREWALL

  ## SETUP SSL CERTIfICATES

  include ::haproxy

#  if ( $balancemember ) {
    ## Export a balancermember server, note that the listening_service parameter
    ##  will/must correlate with an haproxy::listen defined resource type.
    #@@haproxy::balancermember { $fqdn:
    #  order                  => '21',
    #  listening_service      => 'puppet00',
    #  server_name            => $::hostname,
    #  balancer_ip            => $::ipaddress,
    #  balancer_port          => '8140',
    #  balancermember_options => 'check',
    #}
#  }

#  if ( $listen ) {
    ## Declare a couple of Listening Services for haproxy.cfg
    ##  Note that the balancermember server resources are being collected in
    ##  the haproxy::config defined resource type with the following line:
    ##  Haproxy::Balancermember <<| listening_service == $name |>>
#    ensure_resources( 'haproxy::listen', $listen )
    #haproxy::listen { 'puppet00':
    #  order     => '20',
    #  ipaddress => $::ipaddress,
    #  ports     => '18140',
    #  options   => {
    #    'option'  => [
    #      'tcplog',
    #    ],
    #    'balance' => 'roundrobin',
    #  },
    #}
    #haproxy::listen { 'stats':
    #  order     => '30',
    #  ipaddress => '',
    #  ports     => '9090',
    #  options   => {
    #    'mode'  => 'http',
    #    'stats' => [
    #      'uri /',
    #      'auth puppet:puppet',
    #    ],
    #  },
    #}
#  }

}
