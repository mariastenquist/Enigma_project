# testing merge capabilities
# testing git issue (from Maria's computer)
# testing git issue (from Phyllis's computer)

class Cipher
  attr_reader :rotation

  def initialize(rotation = 0)
    @rotation = rotation
  end

  def cipher
    Hash[characters.zip(characters_rotate)]
  end

  def characters
    ("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]
  end

  def characters_rotate
    characters.rotate(rotation)
  end
end

# likely change to an array.
