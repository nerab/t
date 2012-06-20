module T
  module BashCompletion
    #
    # Provides suggestions matching ARG when asked for completion of
    #
    #   t unfollow ARG
    #
    class Unfollow < Base
      def suggestions
        t('followings').each_with_object([]){|u,a| a << u.screen_name}
      end
    end
  end
end
