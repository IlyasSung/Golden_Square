require 'present'

RSpec.describe Present do
  context "wrap and unwrap presents" do
    it "fails" do
      present = Present.new()
      present.wrap("socks")
      expect { present.wrap("socks") }.to raise_error "A contents has already been wrapped."
      result = present.unwrap()
      expect(result).to eq "socks"
    end
    it "fails" do
      present = Present.new()
      expect { present.unwrap() }.to raise_error "No contents have been wrapped."
    end
  end
end
