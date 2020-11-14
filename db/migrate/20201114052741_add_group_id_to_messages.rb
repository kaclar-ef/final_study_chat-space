class AddGroupIdToMessages < ActiveRecord::Migration[6.0]
  def up
    execute 'DELETE FROM messages;'
    add_reference :messages, :group, foreign_key: true
  end

  def down
    remove_reference :messages, :group, foreign_key: true
  end
  
end
