require 'spec_helper'

describe(Band) do
  it { should have_and_belong_to_many(:venues) }

it('capitalizes the band name') do
    test_band = Band.create(name: "u2")
    expect(test_band.name).to(eq("U2"))
  end

it('validates presence of name') do
    test_band = Band.new(name: '')
    expect(test_band.save()).to(eq(false))
  end
end
