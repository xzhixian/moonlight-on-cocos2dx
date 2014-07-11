inspect = require "inspect"
ansicolors  = require "ansicolors"

export console
console =
  log: (fmt, ...)->
    print "LOG: #{string.format(tostring(fmt), ...)"

  info: (fmt, ...)->
    print "INFO: #{string.format(tostring(fmt), ...)"

  warn: (fmt, ...)->
    print "WARN: #{string.format(tostring(fmt), ...)"

  error: (fmt, ...)->
    print "ERROR: #{string.format(tostring(fmt), ...)"

  dir: (obj)->
    print inspect obj


