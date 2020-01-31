class AddAttendanceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :attendance, :string
  end
end
