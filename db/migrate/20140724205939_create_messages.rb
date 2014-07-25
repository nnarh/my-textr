class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :sender
      t.belongs_to :receiver
      t.text :body

      t.timestamps
    end
  end
end
