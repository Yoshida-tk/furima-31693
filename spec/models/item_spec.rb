require 'rails_helper'
RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do

    context '商品が出品できる時' do
      it 'すべての情報が存在している場合に登録できる' do
        expect(@item).to be_valid
      end
    end

    context '新規登録ができない時' do
      it 'ユーザーがログインしていないと登録できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("User must exist")
      end
      it '商品画像がなければ登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it '商品名がなければ登録できない' do
        @item.product_name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Product name can't be blank")
      end
      it 'カテゴリーの情報がなければ登録できない' do
        @item.category_id = "1"
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 1")
      end
      it '商品の状態についての情報がなければ登録できない' do
        @item.status_id ="1"
        @item.valid?
        expect(@item.errors.full_messages).to include("Status must be other than 1")
      end
      it '配送料の負担についての情報がなければ登録できない' do
        @item.shipping_id = "1"
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping must be other than 1")
      end
      it '発送元の地域についての情報がなければ登録できない' do
        @item.area_id = "1"
        @item.valid?
        expect(@item.errors.full_messages).to include("Area must be other than 1")
      end
      it '発送までの日数についての情報がなければ登録できない' do
        @item.days_id = "1"
        @item.valid?
        expect(@item.errors.full_messages).to include("Days must be other than 1")
      end
      it '価格がなければ登録できない' do
        @item.price = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it '価格の範囲が¥300~¥9,999,999の間でなければ登録できない' do
        @item.price ="200"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
      end
      it '販売価格は半角数字でなければ登録できない' do
        @item.price ="３００"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is invalid")
      end
    end
  end
end
