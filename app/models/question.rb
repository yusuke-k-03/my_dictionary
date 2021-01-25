class Question < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :user
  has_many :answers

  validates :title, :text, presence: true
  validates :category_id, numericality: { other_than: 1 }
end
