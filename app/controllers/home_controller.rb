class HomeController < ApplicationController
  def index
    right_now = Time.now
    @current_time = right_now.stamp("Jan 1st 1:00 AM")
    # Adjust message by time of day
    @greet_message = case right_now.hour
      when 5..11
        "Good Morning! <i class='fa fa-sun-o'></i>".html_safe
      when 12..15
        "Good Afternoon! <i class='fa fa-sun-o'></i>".html_safe
      when 16..19
        "Good Evening! <i class='fa fa-moon-o'></i>".html_safe
      when 20..23, 0..4
        "Good Night! <i class='fa fa-star'></i>".html_safe
      end
      @quote = Quote.all.sample.quip
      @year = Time.now.year

  end
end
