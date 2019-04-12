class Octoevent < ApplicationRecord
    validates :issue_number, :issue_action, :url, :created_at, :updated_at, presence: true
end
