class CreateJoin < ActiveRecord::Migration
  def change
    create_table :contacts_messages do |t|
      t.column :message_id, :int
      t.column :contact_id, :int
    end
  end
end
