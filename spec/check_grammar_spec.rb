require "check_grammar"

RSpec.describe "check_grammar method" do
  context "given an empty string" do
    it "fails" do
      expect { check_grammar("") }.to raise_error "no text given"
    end
  end 

  context "given a string that has capital letter and a full stop" do
    it "returns true" do
      result = check_grammar("Hello, today is Monday.")
      expect(result).to eq true
    end
  end

  context "given a string that has no capital letter" do
    it "returns false" do
      result = check_grammar("hello, today is Monday.")
      expect(result).to eq false
    end
  end

  context "given a string that has no full stop" do
    it "returns false" do
      result = check_grammar("Hello, today is Monday")
      expect(result).to eq false
    end
  end

  context "given a string that has no full stop and no capital" do
    it "returns false" do
      result = check_grammar("hello, today is Monday")
      expect(result).to eq false
    end
  end
end