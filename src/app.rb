#!/usr/bin/env ruby
# typed: false

require "bundler/setup"
require "rubygems"

require_relative "cesar_cipher"

PLAINTEXT = "Hello, World!".freeze
ENCRYPTED_TEXT = "Srcxzrk Alcgyr".freeze
KEY = 17

pp CesarCipher.new(PLAINTEXT, KEY).do_something
pp CesarCipher.new(ENCRYPTED_TEXT, KEY).take_a_step
