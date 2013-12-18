# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member do
    first_name "MyString"
    last_name "MyString"
    dob "2013-12-18"
    gender "MyString"
    location_place "MyString"
    household_size 1
    uid "MyString"
    pran "MyString"
    image "MyString"
    monthly_income "9.99"
    pension_saving "9.99"
    occupation nil
    partner nil
    location_state nil
  end
end
