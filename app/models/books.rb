class Book < ActiveRecord::Base
	validates :title, :author,
	validates :price, presence :true,
	numericality { only_integer :time, greater_than :0 }
end

