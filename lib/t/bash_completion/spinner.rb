require 'timeout'

module Spinner
  #
  # Idea taken from http://ruby.about.com/od/tasks/f/spinner.htm
  #
  # Call it like
  #
  #   puts "What is the answer to the ultimate question of life, the universe, and everything?"
  #
  #   include Spinner
  #   answer = spinning{
  #     sleep 5 # 7½ million years, really ...
  #     "42"
  #   }
  #
  #   puts "The answer is #{answer}."
  #
  # The <tt>timeout</tt> parameter specifies the maximum time to wait for the passed block to complete.
  # If that is reached, <tt>Timeout::Error</tt> is raised.
  #
  def spinning(timeout = 60, &block)
    chars = %w{| / - \\}
  
    result = nil
    t = Thread.new{result = block.call}
    
    # wait for completion, but no longer than timeout seconds
    Timeout::timeout(timeout) do
      while t.alive?
        STDERR.print chars.first
        sleep 0.1
        STDERR.print "\b"
        chars.push chars.shift
      end
    end

    t.join
      
    # clean up
    STDERR.print " "
    STDERR.print "\b"
    
    result
  end
end
