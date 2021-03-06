# @summary Manages the connection details that resources in this module will use to connect
#          with vCenter.
#
# @param server
#   Hostname / IP address of the vCenter server
# @param username
#   Username to use for vCenter authentication
# @param password
#   Password to use for vCenter authentication
#
# @example Basic usage
#   class { 'powercli::vcenter::connection':
#     server   => 'vcenter.domain.tld',
#     username => 'user@domain.tld',
#     password => 'PassWord!',
#   }
class powercli::vcenter::connection (
  String $server,
  String $username,
  String $password,
) {
  $connect = "Connect-VIServer -Server '${server}' -Username '${username}' -Password '${password}'"
}
