require "grammar_stats"
RSpec.describe GrammarStats do
  context "given an empty string" do
    it "fails" do
      grammar = GrammarStats.new()
      expect{(grammar.check(""))}.to raise_error(RuntimeError, "no text given")
    end

    it "returns true when first char is capital and last char is punctuation" do
      grammar = GrammarStats.new()
      expect(grammar.check("Hello, my name is Kam!")).to eq true
    end

    it "returns false when first char is not capital and last char is not punctuation" do
      grammar = GrammarStats.new()
      expect(grammar.check("hello, my name is Kam")).to eq false
    end
  end

  context "returns the percentage of attempts" do
    grammar = GrammarStats.new()
    it "returns the percentage" do
      grammar.check("Hello kam!")
      grammar.check("Hello Kam!")
      grammar.check("Hello Kam")
      grammar.check("hello kam!")
      expect(grammar.percentage_good).to eq 75
    end

  end
end

