class CreateSharedPassword < ActiveRecord::Migration[8.0]
  def change
    create_table :shared_password do |t|
      t.string :access_token, null: false
      t.string :private_key, null: false
      t.datetime :expires_at, null: false

      t.timestamps
    end
  end
end
