class CreateProspects < ActiveRecord::Migration[5.1]
  def change
    create_table :prospects do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :point_of_contact
      t.string :interests
      t.text :comments
      t.date :date_first_contact

      t.timestamps
    end
  end
end
