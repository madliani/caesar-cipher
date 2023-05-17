#!/usr/bin/env ruby
# typed: false

require "bundler/setup"
require "rubygems"

require_relative "caesar_cipher"

PLAINTEXT = "Hello, World!".freeze
ENCRYPTED_TEXT = "Srcxzrk Alcgyr".freeze
KEY = 17

pp CaesarCipher.new(PLAINTEXT, KEY).do_something
pp CaesarCipher.new(ENCRYPTED_TEXT, KEY).take_a_step
