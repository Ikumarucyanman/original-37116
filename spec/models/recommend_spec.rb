require 'rails_helper'
describe User do
  before do
    @recommend = FactoryBot.build(:recommend)
  end

  describe 'ユーザー新規登録' do
    context '投稿ができる時' do
      it "place_name、region_id、city_id、category_id、があれば投稿できる" do
        expect(@recommend).to be_valid
      end
    end

    context '投稿ができない時' do
      it "画像が空では投稿できない" do
        @recommend.image = nil
        @recommend.valid?
        expect(@recommend.errors.full_messages).to include "Image can't be blank"
      end
      it "場所名が空では投稿できない" do
        @recommend.place_name = ""
        @recommend.valid?
        expect(@recommend.errors.full_messages).to include "Place name can't be blank"
      end
      it "地方名がなければ投稿できない" do
        @recommend.region_id = ""
        @recommend.valid?
        expect(@recommend.errors.full_messages).to include "Region can't be blank"
      end
      it "市町村がなければ投稿できない" do
        @recommend.city_id = ""
        @recommend.valid?
        expect(@recommend.errors.full_messages).to include "City can't be blank"
      end
      it "カテゴリーがなければ投稿できない" do
        @recommend.category_id = ""
        @recommend.valid?
        expect(@recommend.errors.full_messages).to include "Category can't be blank"
      end
      it "地方名に「Select a region」が選択されていると投稿できない" do
        @recommend.region_id = "1"
        @recommend.valid?
        expect(@recommend.errors.full_messages).to include "Region can't be blank"
      end
      it "市町村名に「Select a city」が選択されていると投稿できない" do
        @recommend.city_id = "1"
        @recommend.valid?
        expect(@recommend.errors.full_messages).to include "City can't be blank"
      end
      it "カテゴリーに「Select a categoryが選択されていると投稿できない」" do
        @recommend.category_id = "1"
        @recommend.valid?
        expect(@recommend.errors.full_messages).to include "Category can't be blank"
      end
      it "userが紐付いてなければ投稿できない" do
        @recommend.user = nil
        @recommend.valid?
        expect(@recommend.errors.full_messages).to include "User must exist"
      end
    end
  end
end