class Food < ApplicationRecord
  belongs_to :type
  belongs_to :kind

  scope :with_keywords, -> keywords {
    if keywords.present?
      columns = [:name, :search_word]
      where(keywords.split(/[[:space:]]/).reject(&:empty?).map {|keyword|
        columns.map { |a| arel_table[a].matches("%#{keyword}%") }.inject(:or)
      }.inject(:and))
    end
  }
end
