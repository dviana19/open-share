class CreateRetrieval < ActiveRecord::Migration[8.0]
  def change
    create_table :retrieval do |t|
      t.string :ip_address
      t.string :user_agent
      t.references :shared_password, null: false, foreign_key: true

      t.timestamps
    end
  end
end
