class AddEndDateToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :end_date, :date
  end
end
