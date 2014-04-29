class Api::VariantsController < ApplicationController
  def index
    @variants = Variant.search(params[:q]).result
  end
end
