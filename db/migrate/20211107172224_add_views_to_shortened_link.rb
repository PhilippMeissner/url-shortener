class AddViewsToShortenedLink < ActiveRecord::Migration[6.1]
  def change
    add_column :shortened_links, :views, :integer, default: 0
  end
end
