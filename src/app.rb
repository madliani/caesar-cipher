#!/usr/bin/env ruby --enable-frozen-string-literal --jit

require "bundler/setup"
require "rubygems"

require_relative "caesar_cipher"

PLAINTEXT = "Gaius Julius Caesar".freeze
ENCRYPTED_TEXT = "Srcxzrk Alcgyr".freeze
KEY = 17

pp CaesarCipher.new(PLAINTEXT, KEY).do_something
pp CaesarCipher.new(ENCRYPTED_TEXT, KEY).take_a_step
