require 'spec_helper'

describe Cow do
  context '#initialize a cow' do
    it 'use default cow if no cow specified' do
      cow = Cow.new
      expect(cow.cow_type).to eq('default')
    end

    it 'use default cow if specified cowfile not found' do
      cow = Cow.new(cow_type: 'cow_not_found')
      expect(cow.cow_type).to eq('default')
    end

    it 'use specified cow if specified cowfile exists' do
      cow = Cow.new(cow: 'bong')
      expect(cow.cow_type).to eq('bong')
    end
  end
end
