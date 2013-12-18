json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :last_name, :dob, :gender, :location_place, :household_size, :uid, :pran, :image, :monthly_income, :pension_saving, :occupation_id, :partner_id, :location_state_id
  json.url member_url(member, format: :json)
end
