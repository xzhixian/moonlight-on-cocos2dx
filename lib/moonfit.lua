local inspect = require("inspect")
local COLOR_INFO = "[0m[44m[37mINFO:  [0m[0m"
local COLOR_WARN = "[0m[43m[30mWARN:  [0m[0m"
local COLOR_ERROR = "[0m[41m[37m[5mERROR: [0m[0m"
console = {
  log = function(fmt, ...)
    return print("LOG:  " .. tostring(string.format(tostring(fmt), ...)))
  end,
  info = function(fmt, ...)
    return print(tostring(COLOR_INFO) .. " " .. tostring(string.format(tostring(fmt), ...)))
  end,
  warn = function(fmt, ...)
    return print(tostring(COLOR_WARN) .. " " .. tostring(string.format(tostring(fmt), ...)))
  end,
  error = function(fmt, ...)
    return print(tostring(COLOR_ERROR) .. " " .. tostring(string.format(tostring(fmt), ...)))
  end,
  dir = function(obj)
    return print(inspect(obj))
  end
}
