module T
  module BashCompletion
    #
    # Provides all followers of arg
    #
    class Follow
      def initialize(arg)
        @arg = arg
      end
      
      def suggestions
        %w[sandra sandro suhlig]
      end
    end
  end
end