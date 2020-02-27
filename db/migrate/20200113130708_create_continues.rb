class CreateContinues < ActiveRecord::Migration[6.0]
  def change
    create_table :continues do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
