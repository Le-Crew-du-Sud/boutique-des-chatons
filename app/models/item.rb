class Item < ApplicationRecord
  belongs_to :category
  has_many :purchases
  has_many :users, through: :purchases
end
