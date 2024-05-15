class DisclosureComponent
  def initialize(summary:, content:)
    @summary = summary
    @content = content
  end

  def render_in(view_context)
    view_context.render(html: Mustache.render(
      view_context.render("components/disclosure/template"),
      summary: @summary, content: @content
    ).html_safe)
  end
end
