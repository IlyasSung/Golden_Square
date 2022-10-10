require "include_todo"

RSpec.describe "include_todo method" do
  it "Check return when text is |#TODO|" do
    result = include_todo("#TODO")
    expect(result).to eq true
  end
  it "Check return when text is |Ilyas|" do
    result = include_todo("Ilyas")
    expect(result).to eq false
  end
  it "Check return when text is |#TODO|" do
    result = include_todo("#TODO washing")
    expect(result).to eq true
  end
  it "Check return when text is |Cooking|" do
    result = include_todo("Cooking")
    expect(result).to eq false
  end
end
