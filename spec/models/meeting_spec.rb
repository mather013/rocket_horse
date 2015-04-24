require 'spec_helper'

describe Meeting do
    describe 'associations' do
      it { should belong_to :racecourse }
    end

    describe 'attributes' do
      it { should respond_to(:id) }
      it { should respond_to(:racecourse_id) }
      it { should respond_to(:event) }
      it { should respond_to(:date) }
    end

    describe 'mass assignment' do
      [:id, :racecourse_id, :event, :date].each do |attribute|
        it { should allow_mass_assignment_of(attribute) }
      end
    end
end
