require "rspec"

require_relative "../src/caesar_cipher"

HELLO_WORLD = "Hello, World!".freeze
KEY = 17

RSpec.describe CaesarCipher do
  subject do
    CaesarCipher.new HELLO_WORLD, KEY
  end

  it "Test #1" do
    expect(subject.do_something).to eq "Yvccf, Nficu!"
  end
end
