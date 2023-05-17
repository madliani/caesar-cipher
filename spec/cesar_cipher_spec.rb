# typed: false

require "rspec"

require_relative "../src/cesar_cipher"

HELLO_WORLD = "Hello, World!".freeze
KEY = 17

RSpec.describe CesarCipher do
  it "Test #1" do
    cesar_cipher = CesarCipher.new HELLO_WORLD, KEY

    expect(cesar_cipher.do_something).to eq "Yvccf, Nficu!"
  end
end
