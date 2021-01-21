class Dictionary < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :title, :text, presence: true
  validates :category_id, numericality: { other_than: 1 }
end
