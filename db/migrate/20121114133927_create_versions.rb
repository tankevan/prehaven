class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :name
      t.integer :owner_id
      t.text :description

      t.timestamps
    end
  end
end
