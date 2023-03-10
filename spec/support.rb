module TestSupport
  class SpecUser
    def name
      'James Brown'
    end

    def email
      'james.brown@still-alive.com'
    end

    def to_partial
      'user_partial'
    end
  end

  class SpecYoutube
    def video_name
      'Cat vs Printer'
    end

    def video_tag(size)
      "<video>#{size}</video>"
    end
  end
end
