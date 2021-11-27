class Text < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type
  belongs_to :user
  with_options presence: true do
  validates :sentence
  validates :tag
  end
  validates :type_id, numericality: { other_than: 1 , message: "can't be blank" } 

  def self.search(search)
    if search != ""
      Text.where('tag LIKE(?)', "%#{search}%")
    else
      Text.all
    end
  end
end
