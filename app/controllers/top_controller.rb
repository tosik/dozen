class TopController < ApplicationController
  def index
    @goals = Goal.find(:all, :conditions=>{:is_deleted => false})

    # http://kjirou.sakura.ne.jp/mt/2007/09/post_57.html
    weights = @goals.collect {|g| (g.term - Time.now)}
    coefficient = 16 / Math::sqrt(weights.min)
    @levels = weights.collect {|w| 16 - ( Math::sqrt(w) - Math::sqrt(DateTime.now) ) * coefficient }
  end

end
