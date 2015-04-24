require 'spec_helper'

describe Racecourse do
  describe 'associations' do
    it { should have_many :meetings }
  end

  describe 'attributes' do
    it { should respond_to(:id) }
    it { should respond_to(:name) }
  end

  describe 'mass assignment' do
    [:id, :name].each do |attribute|
      it { should allow_mass_assignment_of(attribute) }
    end
  end
end
