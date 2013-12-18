require 'spec_helper'

describe "collaborators/show" do
  before(:each) do
    @collaborator = assign(:collaborator, stub_model(Collaborator,
      :partner => "Partner"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Partner/)
  end
end
