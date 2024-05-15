class DisclosureWithSlotsComponent < ApplicationComponent
  slot :summary
  slot :content

  def render_in(view_context)
    @view_context = view_context
    yield self

    @view_context.render(html: Mustache.render(
      @view_context.render("components/disclosure/template"),
      summary: summary, content: content
    ).html_safe)
  end
end
