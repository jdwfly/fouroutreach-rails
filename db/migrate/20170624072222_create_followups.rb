class CreateFollowups < ActiveRecord::Migration[5.1]
  def change
    create_table :followups do |t|
      t.string :visit_type
      t.date :date
      t.text :comments
      t.references :prospect, foreign_key: true

      t.timestamps
    end
  end
end
