class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.string :name
      t.integer :user_id
      t.string :banner
      t.text :short_desc
      t.text :desc
      t.string :status

      t.timestamps
    end
  end
end
