require 'rubymarks'
require 'rubymarks/rails'

# Add extensions into ActionView::Base
ActionView::Base.class_eval { include Rubymarks::Rails }
