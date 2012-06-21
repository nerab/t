module T
  module BashCompletion
    #
    # Provides suggestions for t commands when asked for completion of
    #
    #   t <tab>
    #   t d<tab>
    #
    class Commands < Base
      def suggestions
        T::CLI.all_tasks.each_with_object([]){|t,a| a << t.first}
      end
    end
  end
end
