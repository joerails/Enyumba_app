module ClientsHelper

def gravatar_for(client)
    gravatar_id = Digest::MD5::hexdigest(client.email.downcase)
    
    image_tag(gravatar_url, alt: client.name, class: "avatar")
  end

end
