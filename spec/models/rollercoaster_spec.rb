require 'spec_helper'

describe Rollercoaster do

  it "can be created" do
     lambda {
       Factory(:rollercoaster)
     }.should change(Rollercoaster, :count).by(1)

  end

  context "should not be valid" do
    [:name, :theme_park_id].each do |attr|
      it "without #{attr}" do
        subject.should_not be_valid
        subject.errors[attr].should_not be_empty
      end
    end
  end

  context "associations -- " do
    it 'belongs to a theme_park' do
      subject.should respond_to(:theme_park)
    end
  end


  #it "should not be valid without a name" do
  #  subject.should_not be_valid
  #  subject.errors[:name].should_not be_empty
  #end
  #
  #it "should not be valid without a theme_park_id" do
  #   subject.should_not be_valid
  #   subject.errors[:theme_park_id].should_not be_empty
  #end





end
