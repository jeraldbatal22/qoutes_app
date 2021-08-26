class CreateQoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :qoutes do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end

