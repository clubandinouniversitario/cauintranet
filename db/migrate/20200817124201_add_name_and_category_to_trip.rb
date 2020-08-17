class AddNameAndCategoryToTrip < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :name, :string
    add_column :trips, :category, :integer
  end
end
