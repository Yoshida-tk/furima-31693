FactoryBot.define do
  factory :item do
    category_id     {'2'}
    status_id       {'3'}
    area_id         {'4'}
    shipping_id     {'5'}
    days_id         {'6'}
    product_name    {'test'}
    price           {'3000'}
    text            {'test'}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
