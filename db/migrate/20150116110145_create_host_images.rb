class CreateHostImages < ActiveRecord::Migration
  def change
    create_table :host_images do |t|
      t.text :distribution_path
      t.text :version
      t.text :description
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
