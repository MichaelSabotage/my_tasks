class Todo < ApplicationRecord
    belongs_to :project
    validates :text, presence: true
    validates :isCompleted, inclusion: ["true", "false"]
end
