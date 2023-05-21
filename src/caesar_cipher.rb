# typed: false

# Caesar's Cipher Encoder and Decoder
class CaesarCipher
  ALPHABET_LOWERCASE = "abcdefghijklmnopqrstuvwxyz".freeze
  ALPHABET_UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  ALPHABET_CARDINALITY = 26

  def initialize(text = "", key = 0)
    @text = text.chomp.strip.chars.freeze
    @key = key
  end

  # Encode
  def do_something
    encryted_text = []
    alphabet = ""

    @text.each do |character|
      if ALPHABET_LOWERCASE.include? character
        alphabet = ALPHABET_LOWERCASE.freeze
      elsif ALPHABET_UPPERCASE.include? character
        alphabet = ALPHABET_UPPERCASE.freeze
      else
        encryted_text << character
      end

      if alphabet.include? character
        alphabet.chars.each.with_index do |_, letter_index|
          encryted_text << alphabet[(letter_index + @key) % ALPHABET_CARDINALITY] if character == alphabet[letter_index]
        end
      end
    end

    encryted_text.join.freeze
  end

  # Decode
  def take_a_step
    plaintext = []
    alphabet = ""

    @text.each do |character|
      if ALPHABET_LOWERCASE.include? character
        alphabet = ALPHABET_LOWERCASE
      elsif ALPHABET_UPPERCASE.include? character
        alphabet = ALPHABET_UPPERCASE
      else
        plaintext << character
      end

      if alphabet.include? character
        alphabet.chars.each.with_index do |_, letter_index|
          plaintext << alphabet[(letter_index - @key) % ALPHABET_CARDINALITY] if character == alphabet[letter_index]
        end
      end
    end

    plaintext.join.freeze
  end
end
