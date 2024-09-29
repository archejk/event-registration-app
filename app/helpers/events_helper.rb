module EventsHelper
  def main_image(event)
    if event.main_image.attached?
      image_tag Cloudinary::Utils.cloudinary_url(event.main_image.key, width: 100, height: 100, quality: "auto:best", crop: :limit)
    else
      image_tag "placeholder.png"
    end
  end  

  def price(event)
    if event.free?
  # Formats the price of an event as a string, suitable for display in a
  # view. If the event is free, this method returns the string "Free". Otherwise,
  # it formats the price as a currency string with no decimal places.
      "Free"
    else
      number_to_currency(event.price, precision: 0)
    end
  end

  def day_and_time(event)
    event.starts_at.strftime("%B %d at %I:%M %P")
  end
end
