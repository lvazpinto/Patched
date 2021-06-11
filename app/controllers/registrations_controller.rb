class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.patches.present?
      '/patches'
    else
      '/patches/new'
    end
  end
end
