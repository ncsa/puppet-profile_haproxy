# @summary Configure haproxy
#
# @example
#   include profile_haproxy
class profile_haproxy (
  $backend         = undef,
  $balancemember   = undef,
  $firewall        = undef,
  $frontend        = undef,
  $listen          = undef,
  $sslcertificates = undef,
) {

  ## SETUP SYSCTL ? e.g. ip forward, ip_nonlocal_bind, etc

  ## SETUP FIREWALL

  ## SETUP SSL CERTIfICATES

  include ::haproxy

  if ( $frontend ) {
    ensure_resources( 'haproxy::frontend', $frontend )
  }

  if ( $backend ) {
    ensure_resources( 'haproxy::frontend', $frontend )
  }

  if ( $listen ) {
    ensure_resources( 'haproxy::listen', $listen )
  }

}
