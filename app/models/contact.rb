class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :question
end
