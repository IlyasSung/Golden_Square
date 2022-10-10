require 'check_codeword'

RSpec.describe "check_codeword  method" do
  it "Check if the code word is correct" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  it "Check if the code word is partly correct" do
    result = check_codeword("hose")
    expect(result).to eq "Close, but nope." 
  end
  it "Check if the code word is wrong" do
    result = check_codeword("elephant") 
    expect(result).to eq "WRONG!" 
  end
end
