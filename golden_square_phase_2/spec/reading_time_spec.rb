require 'reading_time'

RSpec.describe "reading_time method" do
  it "Check return when input is 1" do
    result = reading_time(1)
    expect(result).to eq "1 minute"
  end
  it "Check return when input is 200" do
    result = reading_time(200)
    expect(result).to eq "1 minute"
  end
  it "Check return when input is 500" do
    result = reading_time(500)
    expect(result).to eq "3 minutes"
  end
  it "Check return when input is 2000" do
    result = reading_time(2000)
    expect(result).to eq "10 minutes"
  end
  it "Check return when input is 5223" do
    result = reading_time(5223)
    expect(result).to eq "27 minutes"
  end
end