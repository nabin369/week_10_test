class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.string :username
      t.integer :count

      t.timestamps
    end
  end
end
