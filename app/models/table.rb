class Table < ActiveRecord::Base
  attr_accessible :question_id, :table_name
  belongs_to :question
  has_many :participants
  has_many :grains
end
