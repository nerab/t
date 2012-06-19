module T
  module BashCompletion
    #
    # Provides suggestions matching ARG when asked for completion of
    #
    #   t follow ARG
    #
    # If ARG is nil, all users that Twitter suggests to follow will be provided.
    #
    class Follow
      def initialize(arg)
        @arg = arg
      end
      
      def suggestions
        T.t('suggest').split
      end
    end
  end
end