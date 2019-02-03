class Vote < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged, slug_column: :slug

  (0..8).each do |i|
    validates_inclusion_of "choice#{i}", :in => 0..8, :on => :create, :message => "please vote for a valid candidate", :allow_blank => true
  end

  belongs_to :election

  def choice(defeated_already = [])
    (0..8).each do |i|
      val = send("choice#{i}")
      return val if valid_choice?(val, defeated_already)
    end
    return nil
  end

  private

  def slug_candidates
    SecureRandom.urlsafe_base64(10)
  end

  def valid_choice?(val, defeated_already)
    !val.blank? && !defeated_already.include?(val)
  end
end
