class AddUrlToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :URL, :string
  end
end
