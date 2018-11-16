module BlogsHelper
    def gravatar_helper user
        default_url = "https://davirlein-porfolio-bucket.s3.amazonaws.com/uploads/guest.png"
        gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
        image_tag "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}", width: 40
    end
    class CodeRayify < Redcarpet::Render::HTML
        def block_code(code, language)
            CodeRay.scan(code, language).div
        end
    end
    def markdown(text)
        coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)
        options = {
            fenced_code_blocks: true,
            no_intra_emphasis: true,
            autolink: true,
            lax_html_blocks: true
        }
        markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
        markdown_to_html.render(text).html_safe
    end
    def blog_status_color blog
        'color: red;' if blog.draft?
    end
end
