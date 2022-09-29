class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :address_line_one
      t.string :address_line_two
      t.string :city
      t.string :state
      t.string :zip
      t.string :client_title
      t.string :cleaner_title
      t.text :details
      t.references :user, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
