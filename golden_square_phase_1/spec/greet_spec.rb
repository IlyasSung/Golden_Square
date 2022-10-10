require 'greet'

RSpec.describe "greet method" do
  it "returns\"Hello, *name*!\"" do
    result = greet("Ilyas")
    expect(result).to eq "Hello, Ilyas!"
  end
end
