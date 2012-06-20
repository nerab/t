module T
  module BashCompletion
    #
    # Provides suggestions matching ARG when asked for completion of
    #
    #   t dm ARG
    #
    class Dm < Base
      #
      # "In order to send a direct message to another Twitter user, that person must be following you."
      #
      def suggestions
        t('followers')
      end
    end
  end
end
