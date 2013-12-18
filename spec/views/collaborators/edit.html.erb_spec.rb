require 'spec_helper'

describe "collaborators/edit" do
  before(:each) do
    @collaborator = assign(:collaborator, stub_model(Collaborator,
      :partner => "MyString"
    ))
  end

  it "renders the edit collaborator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", collaborator_path(@collaborator), "post" do
      assert_select "input#collaborator_partner[name=?]", "collaborator[partner]"
    end
  end
end
