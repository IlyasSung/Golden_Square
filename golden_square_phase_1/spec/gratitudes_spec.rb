require 'gratitudes'

# We use the class name here rather than a string
RSpec.describe Gratitudes do
  it "What are we grateful for?" do
    gratitude = Gratitudes.new()
    gratitude.add("Family")
    result = gratitude.format()
    expect(result).to eq "Be grateful for: Family"
  end

  # We would typically have a number of these examples.
end
