module Spinner
  #
  # Idea taken from http://ruby.about.com/od/tasks/f/spinner.htm
  #
  # Call it like
  #
  #   puts "What is the answer to the ultimate question of life, the universe, and everything?"
  #
  #   include Spinner
  #   answer = spinning(lambda{
  #     sleep 5 # 7½ million years, really ...
  #     "42"
  #   })
  #
  #   puts "The answer is #{answer}."
  #
  # TODO Use a block to save the caller the lambda statement
  #
  def spinning(code)
    chars = %w{| / - \\}
  
    result = nil
    t = Thread.new{result = code.call}
    while t.alive?
      STDERR.print chars[0]
      sleep 0.1
      STDERR.print "\b"
      chars.push chars.shift
    end
    
    # TODO Do we need a timeout?
    t.join

    # clean up
    STDERR.print " "
    STDERR.print "\b"
    
    result
  end
end
