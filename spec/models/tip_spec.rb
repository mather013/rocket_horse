require 'spec_helper'

describe Tip do

  describe 'associations' do
    it { should belong_to :meeting }
  end

  describe 'attributes' do
    it { should respond_to(:id) }
    it { should respond_to(:meeting_id) }
    it { should respond_to(:race_time) }
    it { should respond_to(:horse_name) }
    it { should respond_to(:odds) }
    it { should respond_to(:information) }
  end

  describe 'mass assignment' do
    [:id, :meeting_id, :race_time, :horse_name, :odds, :information].each do |attribute|
      it { should allow_mass_assignment_of(attribute) }
    end
  end

end
