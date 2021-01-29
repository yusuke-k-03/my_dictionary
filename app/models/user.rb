class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
  end

  has_many :dictionaries
  has_many :questions
  has_many :answers
  has_many :like

  def self.search(search)
    if search != ""
      Dictionary.where('text LIKE(?)',"%#{search}%")
    else
      Dictionary.order('dictionaries.created_at DESC')
    end
  end

end
