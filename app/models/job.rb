class Job < ApplicationRecord
	validates :name, presence: true, length: {maximum:20}
	validates :description, presence: true, length: {maximum:20}
end
