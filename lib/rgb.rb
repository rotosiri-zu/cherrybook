def to_hex(r,g,b)
  # hex = '#'
  # [r,g,b].each do |n|
  [r,g,b].inject('#') do |hex, n|
    # hex += n.to_s(16).rjust(2, '0')
    hex + n.to_s(16).rjust(2, '0')
  end
  # hex
end
