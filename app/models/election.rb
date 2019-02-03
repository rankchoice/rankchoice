class Election < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :votes, dependent: :destroy

  def candidate_options
    (0..8).map do |i|
      [send("candidate#{i}"), i]
    end.reject do |c|
      c[0].blank?
    end
  end
end
