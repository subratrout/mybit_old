require 'spec_helper'

describe "members/show" do
  before(:each) do
    @member = assign(:member, stub_model(Member,
      :first_name => "First Name",
      :last_name => "Last Name",
      :gender => "Gender",
      :location_place => "Location Place",
      :household_size => 1,
      :uid => "Uid",
      :pran => "Pran",
      :image => "Image",
      :monthly_income => "9.99",
      :pension_saving => "9.99",
      :occupation => nil,
      :partner => nil,
      :location_state => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Gender/)
    rendered.should match(/Location Place/)
    rendered.should match(/1/)
    rendered.should match(/Uid/)
    rendered.should match(/Pran/)
    rendered.should match(/Image/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
