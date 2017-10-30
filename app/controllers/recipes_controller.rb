# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    # @recipes = ['celery root']
    @search_term = params[:looking_for] || 'celery root' # @recipes
    # @search_term = @search_term.join(', ') if @search_term.is_a? Array
    # 'cause complete raving reason @recipe line was absent in #add method
    @recipes = Recipe.for(@search_term) || []
  end

  def update_span
    @button_clicks ||= 1
    (@button_clicks % 3).zero? ? @button_clicks = 1 : @button_clicks += 1
  end

  # def add
  #   @recipe = Recipe.find_by(f2f_id: params[:f_id])
  #   unless @recipe
  #     @recipe = Recipe.create(
  #       f2f_id: params[:f_id],
  #       rsite: params[:f2f_url],
  #       rpic: params[:image_url],
  #       title: params[:title]
  #     )
  #   end
  #   unless recipes
  #     recipes << @recipe
  #   end
  # end
  #
  # def remove
  #   @recipes&.destroy
  #   # @userrecipe = UserRecipe.find_by(recipe_id: params[:f_id], user_id: current_user.id)
  #   redirect_back(fallback_location: root_path)
  # end
end
