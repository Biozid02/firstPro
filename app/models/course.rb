class Course < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => "users_courses"

end
