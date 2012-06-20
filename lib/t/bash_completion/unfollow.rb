module T
  module BashCompletion
    #
    # Provides suggestions matching ARG when asked for completion of
    #
    #   t unfollow ARG
    #
    class Unfollow < Base
      def suggestions
        t('followings')
      end
    end
  end
end
