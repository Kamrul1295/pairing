
require "present_error"
RSpec.describe(Present) do
  # context "when present wrapped" do
  #   it "fails" do
  #     present_var = Present.new()
  #     present_var.wrap("world")
  #     expect{present_var.wrap("hello")}.to raise_error "A contents has already been wrapped."
  #   end

  context "When present unwrapped" do
    it "fails" do
      present_var = Present.new
      present_var.wrap(nil)
      expect{present_var.unwrap}.to raise_error(RuntimeError, "No contents have been wrapped.")
    end

  end
  
end
