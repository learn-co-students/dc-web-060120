class CreateDoctorsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
        t.string :name
        t.integer :hospital_id
    end
  end
end
