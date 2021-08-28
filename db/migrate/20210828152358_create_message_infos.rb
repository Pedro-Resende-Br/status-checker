class CreateMessageInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :message_infos do |t|
      t.string :text
      t.string :status

      t.timestamps
    end
  end
end
