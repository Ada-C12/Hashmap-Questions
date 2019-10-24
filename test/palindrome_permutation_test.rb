require_relative "test_helper"

describe "palindrome_permutation?" do
  it "will work for hello" do
    expect(palindrome_permutation?("hello")).must_equal false
  end

  it "will work for 'carrace'" do
    expect(palindrome_permutation?("carrace")).must_equal true
  end

  it "will work for emptystring" do
    expect(palindrome_permutation?("")).must_equal true
  end

  it "test1" do
    expect(palindrome_permutation?("eeaa")).must_equal true
    expect(palindrome_permutation?("eeeb")).must_equal false
    expect(palindrome_permutation?("eebc")).must_equal false
    expect(palindrome_permutation?("eeb")).must_equal true
    expect(palindrome_permutation?("aaaa")).must_equal true
    expect(palindrome_permutation?("1234")).must_equal false
    expect(palindrome_permutation?("aaaee")).must_equal true

  end
end