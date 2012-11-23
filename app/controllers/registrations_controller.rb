class RegistrationsController < Devise::RegistrationsController
	def update
		if !URI(request.referer).path
			@user = User.find(current_user.id)
			email_changed = @user.email != params[:user][:email]
			password_changed = !params[:user][:password].empty?
			successfully_updated = if email_changed or password_changed
				@user.update_with_password(params[:user])
			else
				params[:user].delete("current_password")
				@user.update_without_password(params[:user])
			end

			if successfully_updated
				sign_in @user, bypass: true
				redirect_to root_path, notice: "Your profile is successfully updated."
			else
				render 'edit'
			end
		end
	end

	private

		def build_resource(*args)
			super
			resource.add_role(:unauthorized)
		end
end