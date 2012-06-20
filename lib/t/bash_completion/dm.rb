module T
  module BashCompletion
    #
    # Provides suggestions matching ARG when asked for completion of
    #
    #   t dm ARG
    #
    # If ARG is nil, all users that Twitter suggests to follow will be provided.
    #
    class Dm < Base
      def initialize(arg)
        @arg = arg
      end
      
      #
      # "In order to send a direct message to another Twitter user, that person must be following you."
      #
      def suggestions
        t('followers')
      end
    end
  end
end