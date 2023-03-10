class Task < ApplicationRecord
    #relationship
has_many :subtasks

    validates :title, :description, presence:true
end
