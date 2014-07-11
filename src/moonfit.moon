inspect = require "inspect"

--ansicolors  = require "ansicolors"
--COLOR_INFO = ansicolors('%{bluebg white}INFO: %{reset}')
--COLOR_WARN = ansicolors('%{yellowbg black}INFO: %{reset}')
--COLOR_ERROR = ansicolors('%{redbg white blink}ERROR:%{reset}')

COLOR_INFO = "[0m[44m[37mINFO:  [0m[0m"
COLOR_WARN = "[0m[43m[30mWARN:  [0m[0m"
COLOR_ERROR = "[0m[41m[37m[5mERROR: [0m[0m"

export console
console =
  log: (fmt, ...)->
    print "LOG:  #{string.format(tostring(fmt), ...)}"

  info: (fmt, ...)->
    print "#{COLOR_INFO} #{string.format(tostring(fmt), ...)}"

  warn: (fmt, ...)->
    print "#{COLOR_WARN} #{string.format(tostring(fmt), ...)}"

  error: (fmt, ...)->
    print "#{COLOR_ERROR} #{string.format(tostring(fmt), ...)}"

  dir: (obj)->
    print inspect obj


