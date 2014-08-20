class Recipe < ActiveRecord::Base
  validates :title, :description, :ingredient_list, :instruction, presence: true
  validates :title, length: { maximum: 64 }
  validates :description, length: { maximum: 256 }
end
