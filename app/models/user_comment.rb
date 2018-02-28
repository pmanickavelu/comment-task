class UserComment < ApplicationRecord
  include ActionView::Helpers

  before_validation :clean_comment

  validates :comment_text, presence: true

  private
    def clean_comment
      self.comment_text = sanitize(self.comment_text,tags: %w(b i))
    end
end
