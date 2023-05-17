require 'rspec'
require './lib/dish'

describe Dish do
  describe '#initialize' do
    it 'is a dish' do
      dish = Dish.new("Couscous Salad", :appetizer)
      expect(dish).to be_a Dish
    end

    it 'can read the name' do
      dish = Dish.new("Couscous Salad", :appetizer)
      expect(dish.name).to eq "Couscous Salad"
    end

    it 'can discern the category' do
      dish = Dish.new("Couscous Salad", :appetizer)
      expect(dish.category).to eq :appetizer
    end
  end

  # Iteration 2

  describe '#add_patron' do
    xit 'returns a list of patrons' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      expect(venue.patrons).to eq ['Mike', 'Megan', 'Bob']
    end
  end

  describe '#yell_at_patrons' do
    xit 'returns a list of uppercased names' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      expect(venue.yell_at_patrons).to eq ['MIKE', 'MEGAN', 'BOB']
    end
  end

  # Iteration 3

  describe '#over_capacity?' do
    xit 'returns false when not over capacity' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      expect(venue.over_capacity?).to eq(false)
    end

    xit 'returns true when over capacity' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      venue.add_patron('James')
      venue.add_patron('Cat')
      expect(venue.over_capacity?).to eq(true)
    end
  end

  # Iteration 4
  describe '#kick_out' do
    xit 'removes patrons until capacity is reached' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      venue.add_patron('James')
      venue.add_patron('Cat')
      venue.kick_out
      expect(venue.over_capacity?).to eq(false)
    end
  end
end