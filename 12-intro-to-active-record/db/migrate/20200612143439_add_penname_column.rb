class AddPennameColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :penname, :string
  end
end


