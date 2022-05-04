

require "check_codeword"

RSpec.describe "check_codeword" do
  context "when you enter the right codeword" do
    it "returns the message saying Correct! Come in." do
      result = check_codeword("horse")
      expect(result).to eq "Correct! Come in."
    end
  end

  context "when you enter first letter as h and last letter as e" do
    it "returns the message saying Close, but nope." do
      result = check_codeword("home")
      expect(result).to eq "Close, but nope."
    end
  end
  
  context "when the user enters the wrong codeword" do
    it "returns the message saying WRONG!" do
      result = check_codeword("terminal") 
      expect(result).to eq ("WRONG!")
    end
  end

end