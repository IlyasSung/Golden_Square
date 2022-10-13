require 'cat_facts'

RSpec.describe CatFacts do
    it "calls an API to provide a random cat fact" do
        requester = double :requester
        expect(requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Cats have been domesticated for half as long as dogs have been.","length":63}')
        cat_fact = CatFacts.new(requester)
        expect(cat_fact.provide).to eq "Cat fact: Cats have been domesticated for half as long as dogs have been."
    end
end