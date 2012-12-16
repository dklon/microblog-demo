class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.references :user
      t.string :uid
      t.string :provider

      t.timestamps
    end
    add_index :authorizations, :user_id
  end
end
