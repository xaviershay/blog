class YouTube < Liquid::Tag
  def initialize(tagName, markup, tokens)
    super

    args = markup.split(' ')
    @id = args[0]
    @width = 500
    @height = 281

    if args[1]
      @width = args[1]
      @height = args[2]
    end
  end

  def render(context)
    "<div class=\"youtube\"><iframe width=\"#{@width}\" height=\"#{@height}\" src=\"https://www.youtube.com/embed/#{@id}?color=white&theme=light\"> </iframe></div>"
  end

  Liquid::Template.register_tag("youtube", self)
end
