## テーブル設計

## usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| first_name         | string | null: false |
| family_name        | string | null: false |
| first_name_kana    | string | null: false |
| family_name_kana   | string | null: false |
| birth_day          | date   | null: false |

## Association
- has_many :items
- has_many :order



## itemsテーブル

| Column             | Type        | Options           |
| ------------------ | ----------- | -----------       |
| user               | references  | foreign_key: true |
| category_id        | integer     | null: false       |
| status_id          | integer     | null: false       |
| area_id            | integer     | null: false       |
| shipping_id        | integer     | null: false       |
| brand_id           | integer     | null: false       |
| product_name       | string      | null: false       |
| price              | integer     | null: false       |
| text               | text        | null:false        |

## association
- belongs_to :user
- has_one :order


## addressテーブル
| Column            | Type        | Options           |
| ----------------- | ----------- | ------------------|
| postal_code       | string      | null: false       |
| prefecture_id     | integer     | null: false       |
| city              | string      | null: false       |
| house_number      | string      | null: false       |
| building_number   | string      |                   |
| phone_number      | string      | null: false       |
| order             | references  | foreign_key: true |

## Association
- belongs_to :order

## order
| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| user     | references | foreign_key: true |
| item     | references | foreign_key: true |

# Association
- has_one :address
- belongs_to :user
- belongs_to :item