
require "string_builder"

RSpec.describe StringBuilder do
  it "bilds an empty string" do
    str_emp = StringBuilder.new()
    expect(str_emp.output).to eq ""
  end

  it "builds a string" do
    str_word = StringBuilder.new()
    str_word.add("world")
    expect(str_word.output).to eq ("world")
  end

  it "checks the length of string" do
    str_length = StringBuilder.new()
    str_length = str_length.add("10")
    expect(str_length.size).to eq 2
  end
end

