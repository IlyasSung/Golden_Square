require 'stringbuilder'

# We use the class name here rather than a string
RSpec.describe StringBuilder do
  it "Builds a string for user" do
    stringbuilder = StringBuilder.new()
    stringbuilder.add("Ily")
    result = stringbuilder.size()
    expect(result).to eq 3
    stringbuilder.add("as")
    result = stringbuilder.output()      
    expect(result).to eq "Ilyas"
  end

  # We would typically have a number of these examples.
end
