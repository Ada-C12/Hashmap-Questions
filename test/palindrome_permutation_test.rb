require_relative "test_helper"

describe "palindrome_permutation?" do
  
  # letters with odd and even counts
  it "will work for hello" do
    expect(palindrome_permutation?("hello")).must_equal false
  end
  
  # one letter with an odd count
  it "will work for 'carrace'" do
    expect(palindrome_permutation?("carrace")).must_equal true
  end
  
  it "will work for emptystring" do
    expect(palindrome_permutation?("")).must_equal true
  end
  
  # odd number of hash keys
  it "returns true for 'dumdumdum'" do
    expect(palindrome_permutation?("dumdumdum")).must_equal true
  end
  
end