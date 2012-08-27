class Question < ActiveRecord::Base
  attr_accessible :question
  validates :question, :length => { :maximum => 140 }
  has_many :tables 
end
