class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :date
      t.string :medium
      t.text :credit_line
      t.string :classification
      t.string :department
      t.string :thumbnail_url
      t.float :height
      t.float :width

      t.timestamps
    end
  end
end
