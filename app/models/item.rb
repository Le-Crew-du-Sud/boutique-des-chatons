class Item < ApplicationRecord
  #activestorage
  has_many_attached :itempicture

  belongs_to :category
  has_many :purchases
  has_many :users, through: :purchases
end
