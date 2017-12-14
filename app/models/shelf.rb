class Book < ActiveRecord::Base
  has_many :books, dependent: :nullify
end

