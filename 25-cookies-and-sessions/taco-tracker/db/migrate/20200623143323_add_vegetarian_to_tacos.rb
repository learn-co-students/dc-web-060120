class AddVegetarianToTacos < ActiveRecord::Migration[6.0]
  def change
    add_column :tacos, :vegetarian, :boolean
  end
end
