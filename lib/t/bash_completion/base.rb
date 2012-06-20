module T
  #
  # Test with COMP_LINE="t follow s" bundle exec bin/t-completion 
  #
  module BashCompletion
    #
    # Modeled roughly after https://github.com/colszowka/rvm-completion/
    #
    # Some commands have dedicated completers for their args in the BashCompletion module
    #
    class Base
      def initialize(comp_line)
        @comp_line = comp_line
      end
    
      # Find a match for the current command line input
      def matches
        # Completion for root level commands
        if command_incomplete?(shell_argument)
          return select(commands, shell_argument)
        end
    
        # We have the command in shell_argument(1) now
        # Look up the completer for shell_argument(2) and use it, or return the empty result.
        begin
          completer = T::BashCompletion.const_get(shell_argument(1).capitalize).new(shell_argument(2))
          select(completer.suggestions, shell_argument(2))
        rescue NameError
          [] # no completer found
        end
      end

      protected

      def t(task)
        #
        # TODO Wrap this like
        #
        # muted($stdout){
        #   T::CLI.new.send(task)
        # }
        #
        # where muted returns the result of the block
        #
        orig_stdout = $stdout
        $stdout = StringIO.new # TODO We really want NullIO here ...
        result = T::CLI.new.send(task)
        $stdout = orig_stdout
        result
      end
      
      private
  
      # Retrieves the shell argument at the specified position, defaults to first argument
      def shell_argument(level = 1)
        @comp_line.split(' ')[level] || ''
      end
  
      # Checks whether the first command is complete
      def command_incomplete?(cmd)
        not commands.include?(cmd.strip)
      end
    
      def commands
        T::CLI.all_tasks.each_with_object([]){|t,a| a << t.first}
      end    
  
      # Matches the given (partial?) command against the given collection
      def select(collection, command, options={})
        options = {:regexp => false}.merge(options)
        return [] if collection.any? {|i| i.strip == command.strip}
        collection.select do |item|
          item[0, command.length] == command or (options[:regexp] and item =~ /#{command}/)
        end.sort
      end
    end
  end
end
