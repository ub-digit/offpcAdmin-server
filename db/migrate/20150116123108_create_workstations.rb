class CreateWorkstations < ActiveRecord::Migration
  def change
    create_table :workstations do |t|
      t.text :name
      t.text :sigel
      t.text :floor
      t.text :room
      t.datetime :deleted_at
      t.text :description

      t.timestamps
    end
  end
end
