class PublicController < ApplicationController
  skip_before_action :authenticate_user!, only: [:about]
  def about
    # don't required login
  end

  def statistic
    # required login
  end
end
