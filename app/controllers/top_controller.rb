class TopController < ApplicationController
  def index
    @goals = Goal.find(:all, :conditions=>{:is_deleted => false})

    if @goals.size != 0
      # http://kjirou.sakura.ne.jp/mt/2007/09/post_57.html
      weights = @goals.collect {|g| (g.term - DateTime.now)}
      coefficient = 36 / Math::sqrt(weights.max)
      @levels = weights.collect {|w| 36 - Math::sqrt(w) * coefficient }
    end
  end

end
