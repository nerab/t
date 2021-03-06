module T
  module FormatHelpers
  private

    # https://github.com/rails/rails/blob/bd8a970/actionpack/lib/action_view/helpers/date_helper.rb
    def distance_of_time_in_words(from_time, to_time=Time.now)
      seconds = (to_time - from_time).abs
      minutes = seconds / 60
      case minutes
      when 0...1
        case seconds
        when 0...1
          'a split second'
        when 1...2
          'a second'
        when 2...60
          '%d seconds' % seconds
        end
      when 1...2
        'a minute'
      when 2...60
        '%d minutes' % minutes
      when 60...120
        'an hour'
      # 120 minutes up to 23.5 hours
      when 120...1410
        '%d hours' % (minutes.to_f / 60.0).round
      # 23.5 hours up to 48 hours
      when 1410...2880
        'a day'
      # 48 hours up to 29.5 days
      when 2880...42480
        '%d days' % (minutes.to_f / 1440.0).round
      # 29.5 days up to 60 days
      when 42480...86400
        'a month'
      # 60 days up to 11.5 months
      when 86400...503700
        '%d months' % (minutes.to_f / 43800.0).round
      # 11.5 months up to 2 years
      when 503700...1051200
        'a year'
      else
        '%d years' % (minutes.to_f / 525600.0).round
      end
    end
    alias :time_ago_in_words :distance_of_time_in_words
    alias :time_from_now_in_words :distance_of_time_in_words

    def strip_tags(html)
      html.gsub(/<.+?>/, '')
    end

    def number_with_delimiter(number, delimiter=",")
      digits = number.to_s.split(//)
      groups = digits.reverse.each_slice(3).map{|g| g.join('')}
      groups.join(delimiter).reverse
    end

  end
end
