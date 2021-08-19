def to_hex(r,g,b)
  # hex = '#'
  # [r,g,b].each do |n|
  [r,g,b].inject('#') do |hex, n|
    # hex += n.to_s(16).rjust(2, '0')
    hex + n.to_s(16).rjust(2, '0')
  end
  # hex
end

# '#12abcd'.scan(/\w\w/) #=>["12","ab","cd"]

# def to_ints(hex)
#   hex.scan(/\w\w/).map do |s|
#     s.hex
#   end
# end

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end
