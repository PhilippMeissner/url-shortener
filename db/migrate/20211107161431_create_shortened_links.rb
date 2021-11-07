class CreateShortenedLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :shortened_links do |t|
      t.string :original_url
      t.string :code

      t.timestamps
    end
  end
end
