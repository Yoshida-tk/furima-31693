FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@example"}
    password              {"00000"}
    password_confirmation {password}
    first_name            {"陸太郎"}
    family_name           {"山田"}
    first_name_kana       {"リクタロウ"}
    family_name_kana      {"ヤマダ"}
    birh_day              {"0000-00-00"}
  end
end