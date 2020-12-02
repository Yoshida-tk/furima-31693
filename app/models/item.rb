class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :shipping
  belongs_to :area
  belongs_to :days

  with_options presence: true do
    validates :image
    validates :product_name
    validates :price, format: { with: /\A[a-z0-9]+\z/ }, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
    validates :text
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :status_id
    validates :shipping_id
    validates :area_id
    validates :days_id
  end
end
