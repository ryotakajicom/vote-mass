class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :site_name
      t.string :site_url
      t.string :site_image

      t.timestamps
    end
  end
end
