class Brand < ApplicationRecord
  has_many :kombuchas, dependent: :destroy

  accepts_nested_attributes_for :kombuchas
end
