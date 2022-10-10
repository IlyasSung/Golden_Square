require 'counter'

# We use the class name here rather than a string
RSpec.describe Counter do
  it "Keeps track of the counter" do
    counter = Counter.new()
    counter.add(2)
    result = counter.report()
    expect(result).to eq "Counted to 2 so far."
  end
  it "Keeps track of the counter" do
    counter = Counter.new()     
    counter.add(1)
    counter.add(1)             
    result = counter.report()
    expect(result).to eq "Counted to 2 so far."
  end

  # We would typically have a number of these examples.
end
