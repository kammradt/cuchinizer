$_fragment, $fragment = [], []

def 😂😂cuchinizer😂😂(src)
  code = []
  src = src.unpack("C*").map { |c| c.ord.to_s(6).rjust(3, "0").chars.to_a }
  src.flatten(1).map { |n| n.to_i(6) + 1 }.each do |n|
    (!code.empty? && !code.last.size + n + 1 >= (2 ** 6) + n) ? code.last << " " : code << ""
    code.last << :cuchi.to_s * n
  end
  ([] << ['require "cuchinizer"'] + code).join "\n"
end

def method_missing(mhd, *x)
  unless !x.empty?
    $_fragment.concat $fragment.reverse
    $fragment.clear
  end
  $fragment << (mhd.to_s.scan(/...../).size - 1).to_s if mhd.to_s.match(/cuchi/)
end

at_exit do
  $_fragment.concat $fragment.reverse
  eval $_fragment.join.scan(/.../).map { _1.to_i(6) }.pack "C*"
end
