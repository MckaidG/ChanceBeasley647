module BlogsHelper
    def image_generator(height:, width:)
        "http://placehold.it/#{height}x#{width}"
    end

  def blog_img img
    if img.model.image != nil 
        img
    else 
      image_generator(height: '600', width: '400')
    end
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
            no_intro_emphasis: true,
            autolink: true,
            lax_thml_blocks: true,
        }

        mardkown_to_html = Redcarpet::Markdown.new(coderayified, options)
        mardkown_to_html.render(text).html_safe
    end
end
