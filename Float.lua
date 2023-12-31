local addOnName = 'Float'
local version = '2.0.1'

if _G.Library then
  if not Library.isRegistered(addOnName, version) then
    --- @class Float
    local Float = {}

    function Float.seemsCloseBy(a, b)
      return math.abs(b - a) < 0.0000000001
    end

    Library.register(addOnName, version, Float)
  end
else
  error(addOnName .. ' requires Library. It seems absent.')
end
