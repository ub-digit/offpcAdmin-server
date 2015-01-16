class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.text :workstation_id
      t.text :serialnumber
      t.text :model
      t.text :mac_address
      t.text :description
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
