class AddElapsedTimeToContinues < ActiveRecord::Migration[6.0]
  def change
    add_column :continues, :elapsed_time, :datetime
  end
end
