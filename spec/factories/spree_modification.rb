FactoryGirl.modify do
  factory :shipping_method do
    admin_name 'Stuff'
    display_on 'front_end'
  end

  factory :stock_location do
    address1 '131 S 8th Ave'
    city 'Manville'
    association(:state, name: 'New Jersey', abbr: 'NJ')
    zipcode '08835'
  end

  factory :address do
    address1 '215 N 7th Ave'
    city 'Manville'
    association(:state, name: 'New Jersey', abbr: 'NJ')
    zipcode '08835'
  end

  factory :return_authorization do
    order { FactoryGirl.create(:shipped_order, with_cartons: false) }
  end
end
