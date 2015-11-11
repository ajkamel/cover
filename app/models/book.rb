class Book < ActiveRecord::Base
  has_many :book_lists
  has_many :lists, through: :book_lists
  belongs_to :author

  validates :title, presence: true
end
