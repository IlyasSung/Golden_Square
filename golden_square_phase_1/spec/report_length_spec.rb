require 'report_length'

RSpec.describe "report_length method" do
  it "Check how long the report is" do
    result = report_length("Report")
    expect(result).to eq "This string was 6 characters long."
  end
end
