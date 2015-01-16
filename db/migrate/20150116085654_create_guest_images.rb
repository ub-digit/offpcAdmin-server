class CreateGuestImages < ActiveRecord::Migration
  def change
    create_table :guest_images do |t|
      t.text :image_type
      t.text :distribution_path
      t.integer :size
      t.text :version
      t.datetime :deleted_at
      t.text :description

      t.timestamps
    end
  end
end
