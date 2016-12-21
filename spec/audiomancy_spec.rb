require('rspec')
require('pry')
require('audiomancy.rb')

describe('String#audiomancy') do
  it("Converts text input with cipher and outputs joined array as string") do
    expect("test".music_encryption()).to(eq("a, c, g#, a"))
  end
  it("Converts text input with cipher and outputs joined array as string") do
    expect("test".music_encryption()).to(eq("a, c, g#, a"))
  end
end
