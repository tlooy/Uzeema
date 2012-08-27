class Grain < ActiveRecord::Base
  attr_accessible :content, :participant_id, :table_id
  belongs_to :participant
  belongs_to :table
end
