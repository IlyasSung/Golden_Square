require 'password_checker'

RSpec.describe PasswordChecker do
  context "Check password" do
    it "returns true" do
      password_checker = PasswordChecker.new()
      result = password_checker.check("IlyasSung")
      expect(result).to be true     
    end
    it "fails" do
      password_checker = PasswordChecker.new()
      expect { password_checker.check("Ilyas") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end
