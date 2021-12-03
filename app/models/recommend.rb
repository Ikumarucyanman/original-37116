class Recommend < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :region
  belongs_to :city
  belongs_to :category

  with_options presence: true do
    validates :image
    validates :place_name
  end

  validates :region_id,   numericality: { other_than: 1 , message: "can't be blank"}
  validates :city_id,     numericality: { other_than: 1 , message: "can't be blank"}
  validates :category_id, numericarity: { other_than: 1 , message: "can't be blank"}

  has_one_attached :image

end
