class StaticPagesController < ApplicationController
  def home
  end
  def about
  end
  def faqs
  end
  def thank_you
  end
  def other_actions
    @step = 0
  end
end
