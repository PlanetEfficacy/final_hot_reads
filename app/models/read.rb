class Read < ApplicationRecord
  def self.top
    where(created_at: (Time.now - 24.hours)..Time.now).group(:url).count.sort_by { |key, val| val }.reverse[0..9]
  end

  def self.top_urls
    top.map { |url| url[0] }
  end
end
