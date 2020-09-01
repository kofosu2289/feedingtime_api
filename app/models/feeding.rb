class Feeding < ApplicationRecord
  def as_json(options={})
    {id: id, food: food, datetime: datetime, created_at: created_at}.tap do |hash|
      hash[:datetime] = created_at.in_time_zone("Eastern Time (US & Canada)").strftime("%m/%d/%Y at %I:%M %p")
    end
  end
end
