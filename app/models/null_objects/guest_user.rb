module NullObjects
  class GuestUser
    def admin?
      false
    end

    def decorate
      self
    end
  end
end
