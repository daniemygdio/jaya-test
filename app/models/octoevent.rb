class Octoevent < ApplicationRecord
    validates :issue, :github_action, :url, presence: true
end
