module AccountsHelper
  def profile_picture(account, style)
    image_path = account.image.present? ? account.image : 'placeholder-profile-male.jpg'
    image_tag(image_path, class: style)
  end

  def can_edit_profile?(profile_id)
    account_signed_in? && current_account.id == profile_id
  end
end
