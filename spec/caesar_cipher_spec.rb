require "rspec"

require_relative "../src/caesar_cipher"

HELLO_WORLD = "Hello, World!".freeze
KEY = 17

RSpec.describe CaesarCipher do
  it "Test #1" do
    caesar_cipher = CaesarCipher.new HELLO_WORLD, KEY

    expect(caesar_cipher.do_something).to eq "Yvccf, Nficu!"
  end
end

