class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :full_name
      t.integer :age
      t.string :team
      t.string :position
      t.string :college

      t.timestamps
    end
  end
end
