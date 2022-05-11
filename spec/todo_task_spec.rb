require "todo_task"
RSpec.describe "check #TODO is in text" do
  it "fails" do
    result = todo_task("12345")
    expect{ todo_task(12345) }.to raise_error "No text given"
  end

  it "returns false if #TODO is not in text" do
    result = todo_task("having_lunch")
    expect(result).to eq "false"
  end

  it "return true if #TODO is in text" do
    result = todo_task("#TODO going_shopping")
    expect(result).to eq "true"
  end
end