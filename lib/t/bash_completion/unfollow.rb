module T
  module BashCompletion
    #
    # Provides suggestions matching ARG when asked for completion of
    #
    #   t unfollow ARG
    #
    # If ARG is nil, all users that Twitter suggests to follow will be provided.
    #
    class Unfollow
      def initialize(arg)
        @arg = arg
      end
      
      def suggestions
        T.t('followings').split
      end
    end
  end
end