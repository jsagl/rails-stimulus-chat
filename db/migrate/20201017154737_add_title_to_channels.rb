class AddTitleToChannels < ActiveRecord::Migration[6.0]
  def change
    add_column :channels, :title, :string
  end
end
