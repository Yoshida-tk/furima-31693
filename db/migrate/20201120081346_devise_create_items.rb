# frozen_string_literal: true

class DeviseCreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.integer :category_id, null:false
      t.integer :status_id,   null:false
      t.integer :area_id,     null:false
      t.integer :shipping_id, null:false
      t.integer :days_id,     null:false
      t.string :product_name, null:false
      t.string :price,        null:false
      t.text :text,           null:false
    end
  end
end
