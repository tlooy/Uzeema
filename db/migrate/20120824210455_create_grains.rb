class CreateGrains < ActiveRecord::Migration
  def change
    create_table :grains do |t|
      t.string :content
      t.integer :participant_id
      t.integer :table_id

      t.timestamps
    end
  end
end
