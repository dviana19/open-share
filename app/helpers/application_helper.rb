module ApplicationHelper
  def render_form_errors(form)
    return unless form.object.errors.any?

    tag.div(class: 'error-message') do
      form.object.errors.full_messages.map do |message|
        tag.p(message)
      end.join.html_safe
    end
  end
end
