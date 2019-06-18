class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.integer :constituent_id, limit: 8, index: true
      t.string :display_name
      t.string :bio
      t.string :nationality
      t.string :gender
      t.integer :begin_date
      t.integer :end_date
      t.string :wiki
      t.string :ulan

      t.timestamps
    end
  end
end
