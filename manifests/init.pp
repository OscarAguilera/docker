# Class: Docker
# ===========================
#
# Full description of class Docker here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'Docker':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#

class Docker {

exec { 'get_docker_compose':
	command => "/usr/bin/curl -o /usr/local/bin/docker-compose -L https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)",
}

exec { 'chmod_docker':
	command => "chmod +x /usr/local/bin/docker-compose",
}
exec {'verify_installation':
	command => "docker-compose -v",
}
}
