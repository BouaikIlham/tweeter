module ApplicationHelper
def profile_image(user, options={})
    size = case options[:size]
    when "large"
      "w-20 h-20"
    when "small"
      "w-10 h-10"
    else
      "w-14 h-14"
    end

    classes = "#{size} flex-skrink-0 rounded-full border-2 border-white"

    if user.profile_image.attached?
      image_tag user.profile_image, class: classes
    else
      image_tag "https://doodleipsum.com/700/avatar-5?bg=3D27F6&i=f339578a64040310d3eb5bd82b550627", class: classes
    end
  end
end
