# frozen_string_literal: true

module RecipesHelper
  def formatted_rank(rank)
    # time string in AM/PM format
    rank.round(2) unless rank.blank?
  end
end
