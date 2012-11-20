module SafeTextilize
  module Helper
    
    def safe_textilize(text, *options)
      options ||= [:hard_breaks]
      
      return '' if text.blank?
     
      Sanitize.clean(RedCloth.new(text, options).to_html, SafeTextilize::SANITIZER.merge(:transformers => [SafeTextilize::VideoTransformer.instance])
    end
    
  end
end