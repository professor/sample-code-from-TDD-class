require 'spec_helper'

describe RollercoastersController do

  let(:rollcoaster) {Factory(:rollercoaster)}

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end

    it "should assign coasters as @rollercoasters" do
      get 'index'
      assigns(:rollercoasters).should_not be_nil
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end

    it "should assign a particular coaster as @rollercoaster" do
      get 'show', :id => rollercoaster.to_param
      assigns(:rollercoaster).should_not be_nil
    end

  end

end
