class Book < ActiveRecord::Base
  has_many :book_lists, dependent: :destroy
  has_many :lists, through: :book_lists

  validates :title, presence: true
end
