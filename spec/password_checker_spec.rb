  #class PasswordChecker
  #def check(password)
    #if password.length >= 8
      #return true
    #else
      #fail "Invalid password, must be 8+ characters."
    #end
  #end
#end

require "password_checker"
RSpec.describe PasswordChecker do
  context "when password is long" do 
   it "fails" do
    password = PasswordChecker.new
    
    expect{password.check("Letmei")}.to raise_error(RuntimeError, "Invalid password, must be 8+ characters.")
    
   end

  end

end

    