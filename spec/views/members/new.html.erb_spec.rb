require 'spec_helper'

describe "members/new" do
  before(:each) do
    assign(:member, stub_model(Member,
      :first_name => "MyString",
      :last_name => "MyString",
      :gender => "MyString",
      :location_place => "MyString",
      :household_size => 1,
      :uid => "MyString",
      :pran => "MyString",
      :image => "MyString",
      :monthly_income => "9.99",
      :pension_saving => "9.99",
      :occupation => nil,
      :partner => nil,
      :location_state => nil
    ).as_new_record)
  end

  it "renders new member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", members_path, "post" do
      assert_select "input#member_first_name[name=?]", "member[first_name]"
      assert_select "input#member_last_name[name=?]", "member[last_name]"
      assert_select "input#member_gender[name=?]", "member[gender]"
      assert_select "input#member_location_place[name=?]", "member[location_place]"
      assert_select "input#member_household_size[name=?]", "member[household_size]"
      assert_select "input#member_uid[name=?]", "member[uid]"
      assert_select "input#member_pran[name=?]", "member[pran]"
      assert_select "input#member_image[name=?]", "member[image]"
      assert_select "input#member_monthly_income[name=?]", "member[monthly_income]"
      assert_select "input#member_pension_saving[name=?]", "member[pension_saving]"
      assert_select "input#member_occupation[name=?]", "member[occupation]"
      assert_select "input#member_partner[name=?]", "member[partner]"
      assert_select "input#member_location_state[name=?]", "member[location_state]"
    end
  end
end
