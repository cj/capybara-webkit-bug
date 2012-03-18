require 'spec_helper'

describe "capybara bug" do

  before { visit root_path }

  subject { page }

  context "#selenium", driver: :selenium do
    it "should fill in the correct date" do
      fill_in 'First Name', with: 'test'
      fill_in 'Datepicker', with: '10/10/2012'
      find_field('Datepicker').value.should eq '10/10/2012'
    end
  end

  context "#webkit", driver: :webkit do
    it "should fill in the correct date" do
      fill_in 'First Name', with: 'test'
      fill_in 'Datepicker', with: '10/10/2012'
      find_field('Datepicker').value.should eq '10/10/2012'
    end
  end

end
