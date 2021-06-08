# @summary Configure haproxy
#
# @example
#   include profile_haproxy
class profile_haproxy {

  include ::profile_haproxy::firewall
  include ::haproxy

}
