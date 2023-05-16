#!/usr/bin/env ruby
# typed: false

require "bundler/setup"
require "rubygems"

require_relative "cesar_cipher"

CODE = "".freeze
KEY = 0

pp CesarCipher.new(CODE, KEY).take_a_step
