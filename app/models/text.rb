class Text < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type
  with_options presence: true do
  validates :sentence
  validates :tag
  end
  validates :type_id, numericality: { other_than: 1 , message: "can't be blank" } 
end
