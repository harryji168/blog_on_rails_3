class Post < ApplicationRecord
    validates :title, presence: true, uniqueness:{ case_sensitive: false}
    validates :body, presence: true, length:{minimum:50}
    has_many :comments, dependent: :destroy
    belongs_to :user, optional: true
end
