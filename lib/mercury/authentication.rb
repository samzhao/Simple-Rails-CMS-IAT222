module Mercury
  module Authentication

    def can_edit?
      if current_user && (current_user.has_role?(:user) || current_user.has_role?(:admin))
      	true
      end
    end

  end
end
