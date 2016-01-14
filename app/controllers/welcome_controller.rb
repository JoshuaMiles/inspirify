class WelcomeController < ApplicationController
  # noinspection RubyArgCount
  def index
    @new_phrase = WelcomeHelper.generate_phrase
  end
end
