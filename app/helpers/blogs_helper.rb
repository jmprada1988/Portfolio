module BlogsHelper
    def gravatar_helper user
        default_url = "https://davirlein-porfolio-bucket.s3.amazonaws.com/uploads/guest.png"
        gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
        image_tag "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}", width: 40
    end
end
