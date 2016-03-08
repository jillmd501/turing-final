class AddDefaultToLinkRead < ActiveRecord::Migration
  def change
    change_column :links, :read, :string, default: "read"
  end
end
