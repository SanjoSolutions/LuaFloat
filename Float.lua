local addOnName = ...
local version = '1.0.1'

if not Library.isRegistered(addOnName, version) then
  --- @class Float
  local Float = {}

  Library.register(addOnName, version, Float)

  function Float.seemsCloseBy(a, b)
    return math.abs(b - a) < 0.0000000001
  end
end
