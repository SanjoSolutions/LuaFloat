local addOnName = 'Float'
local version = '1.0.0'

if (_G.Library and not Library.isRegistered(addOnName, version)) or not _G.Library then
  --- @class Float
  local Float = {}

  function Float.seemsCloseBy(a, b)
    return math.abs(b - a) < 0.0000000001
  end

  if _G.Library then
    Library.register(addOnName, version, Float)
  else
    _G.Float = Float
  end
end
