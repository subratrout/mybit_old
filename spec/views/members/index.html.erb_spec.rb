require 'spec_helper'

describe "members/index" do
  before(:each) do
    assign(:members, [
      stub_model(Member,
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
      ),
      stub_model(Member,
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
      )
    ])
  end

  it "renders a list of members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Location Place".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Pran".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
