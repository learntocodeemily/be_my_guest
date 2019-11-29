class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  # adding a comment for commit
  def index
  end
end
