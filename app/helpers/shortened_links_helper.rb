module ShortenedLinksHelper
  def absolute_shortened_link_url(code)
    "#{root_url}#{code}"
  end
end
