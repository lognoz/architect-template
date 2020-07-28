node default {
  # Make sure this script is executed in __os__.
  if $::osfamily != '__os__' {
    fail("${::operatingsystem} not supported")
  }
}
