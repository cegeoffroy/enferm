module ApplicationHelper

  def avatar_for(user)
    "https://res.cloudinary.com/djpmfj4ym/image/upload/v1610833661/default_user_avatar_iplrkg.png"
  end

  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/#{name}.svg"
    return File.read(file_path).html_safe if File.exists?(file_path)
    '(not found)'
  end
end
