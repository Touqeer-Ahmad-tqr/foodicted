module FoodsHelper

  def class_check(action, result)
    return 'index-search' if action == 'index' || result == 'error' || result == []
  end
  
end
