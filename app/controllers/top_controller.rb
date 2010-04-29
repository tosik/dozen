class TopController < ApplicationController
  def index
    @goals = Goal.find(:all, :conditions=>{:is_deleted => false})

    # http://kjirou.sakura.ne.jp/mt/2007/09/post_57.html
    weights = @goals.collect {|g| (g.term - g.created_at)}
    coefficient = 24 / ( Math::sqrt(weights.max) - Math::sqrt(weights.min) )
    @levels = weights.collect {|w| 24 - ( Math::sqrt(w) - Math::sqrt(weights.min) ) * coefficient }
  end

end
