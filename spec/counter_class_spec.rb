
require "counter_class"
RSpec.describe Counter do 
  it "initially reports a count of zero" do
  count = Counter.new
  result = count.report
  expect(result).to eq "Counted to 0 so far."
  end

  it "initially reports a count of 5" do
    count = Counter.new
    result = count.add(5)
    result = count.report
    expect(result).to eq "Counted to 5 so far."
  end

  it "initially reports a count of -3" do
    count = Counter.new
    result = count.add(-3)
    result = count.report
    expect(result).to eq "Counted to -3 so far."
  end

end

  