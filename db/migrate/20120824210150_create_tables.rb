class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :table_name
      t.integer :question_id

      t.timestamps
    end
  end
end
