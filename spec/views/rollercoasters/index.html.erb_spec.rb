require 'spec_helper'

describe "rollercoasters/index.html.erb" do

  before(:each) do
    assign(:rollercoasters,
     [stub_model(Rollercoaster, :name => "somethign"),
      stub_model(Rollercoaster, :name => "somethign")]
  end

  it "renders attributes in <p>" do
    render
  end

  it "has the speed" do

  end

  it "has an image" do

  end

end
