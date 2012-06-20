module T
  module BashCompletion
    #
    # Provides suggestions matching ARG when asked for completion of
    #
    #   t follow ARG
    #
    class Follow < Base
      def suggestions
        t('suggest')
      end
    end
  end
end
