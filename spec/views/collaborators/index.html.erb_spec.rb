require 'spec_helper'

describe "collaborators/index" do
  before(:each) do
    assign(:collaborators, [
      stub_model(Collaborator,
        :partner => "Partner"
      ),
      stub_model(Collaborator,
        :partner => "Partner"
      )
    ])
  end

  it "renders a list of collaborators" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Partner".to_s, :count => 2
  end
end
