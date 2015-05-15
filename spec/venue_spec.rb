require 'spec_helper'

describe(Venue) do
  it { should have_and_belong_to_many(:bands) }

  it('capitalizes the venue name') do
      test_venue = Venue.create(name: "the fillmore")
      expect(test_venue.name).to(eq("The Fillmore"))
  end

  it('validates presence of name') do
      test_venue = Venue.new(name: '')
      expect(test_venue.save()).to(eq(false))
    end
  end
