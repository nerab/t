module T
  module BashCompletion
    #
    # Provides suggestions matching ARG when asked for completion of
    #
    #   t follow ARG
    #
    class Follow < Base
      def suggestions
        t('suggest').each_with_object([]){|u,a| a << u.screen_name}
      end
    end
  end
end
