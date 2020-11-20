FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@example.com"}
    password              {"Abc123"}
    password_confirmation {"Abc123"}
    first_name            {"陸太郎"}
    family_name           {"山田"}
    first_name_kana       {"リクタロウ"}
    family_name_kana      {"ヤマダ"}
    birth_day             {"2000-05-05"}
  end
end