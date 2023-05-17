# typed: false

# Caesar's Cipher Encoder and Decoder
class CesarCipher
  ALPHABET_LOWERCASE = "abcdefghijklmnopqrstuvwxyz".freeze
  ALPHABET_UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  ALPHABET_CARDINALITY = 26

  def initialize(text = "", key = 0)
    @text = text
    @key = key
  end

  # Encode
  def do_something
    cipher = []
    alphabet = ""

    @text.chars.each do |character|
      if ALPHABET_LOWERCASE.include? character
        alphabet = ALPHABET_LOWERCASE
      elsif ALPHABET_UPPERCASE.include? character
        alphabet = ALPHABET_UPPERCASE
      else
        cipher << character
      end

      if alphabet.include? character
        alphabet.chars.each.with_index do |_, letter_index|
          cipher << alphabet[(letter_index + @key) % ALPHABET_CARDINALITY] if character == alphabet[letter_index]
        end
      end
    end

    cipher.join.freeze
  end

  def take_a_step
    @text
  end
end
