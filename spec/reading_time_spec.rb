require "reading_time"

RSpec.describe "reading_time method" do
  context "when an empty string given" do
    it "returns 0" do
      result = reading_time("",200)
      expect(result).to eq 0
    end
  end

  context "when an 200 words string given" do
    it "returns 1" do
      result = reading_time("house " * 200,200)
      expect(result).to eq 1
    end
  end

  context "when an 199 words string given" do
    it "returns 1" do
      result = reading_time("house " * 199,200)
      expect(result).to eq 1
    end
  end

end

