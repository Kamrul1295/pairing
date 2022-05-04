
require "hello_method"

RSpec.describe "Hello method" do
  it "adds hello to a name and returns it" do
    result = hello_method("kam")
    expect(result).to eq "Hello, kam!"
  end
end


