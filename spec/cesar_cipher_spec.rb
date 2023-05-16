# typed: false

require "rspec"

require_relative "../src/cesar_cipher"

HELLO_WORLD = "".freeze

RSpec.describe CesarCipher do
  it "Test #1" do
    cesar_cipher = CesarCipher.new HELLO_WORLD

    expect(cesar_cipher.take_a_step).to eq "Hello, World!"
  end
end
