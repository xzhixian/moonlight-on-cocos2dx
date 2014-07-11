local inspect = require("inspect")
local ansicolors = require("ansicolors")
console = {
  log = function(fmt, ...)
    return print("LOG: #{string.format(tostring(fmt), ...)")
  end,
  info = function(fmt, ...)
    return print("INFO: #{string.format(tostring(fmt), ...)")
  end,
  warn = function(fmt, ...)
    return print("WARN: #{string.format(tostring(fmt), ...)")
  end,
  error = function(fmt, ...)
    return print("ERROR: #{string.format(tostring(fmt), ...)")
  end,
  dir = function(obj)
    return print(inspect(obj))
  end
}
