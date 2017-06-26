class AddUserToProspect < ActiveRecord::Migration[5.1]
  def change
    add_reference :prospects, :user, foreign_key: true
  end
end
