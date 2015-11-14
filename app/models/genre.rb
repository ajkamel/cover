class Genre < ActiveRecord::Base
  has_many :books
end
