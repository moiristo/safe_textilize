module SafeTextilize
  module Helper
    
    def safe_textilize(text, *options)
      options ||= [:hard_breaks]
      
      return '' if text.blank?
     
      Sanitize.clean(RedCloth.new(text, options).to_html, :transformers => [SafeTextilize::VideoTransformer.instance], :elements => %w[
        a abbr b bdo blockquote br caption cite code col colgroup dd del div dfn dl
        dt em figcaption figure h1 h2 h3 h4 h5 h6 hgroup i img ins kbd li mark
        ol p pre q rp rt ruby s samp small strike strong sub sup table tbody td
        tfoot th thead time tr u ul var wbr
      ])    
    end
    
  end
end