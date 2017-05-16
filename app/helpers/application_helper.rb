module ApplicationHelper
  def devise_error_messages2!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      count: resource.errors.count,
                      resource: resource.class.model_name.human.downcase)

    html = <<-HTML
    <div id="error_explanation">
      <span>Error:</span>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end

  def options_jobs
    options_for_select({Estudiante: 'estudiante', Empleado: 'empleado', Ambas: 'ambas', Ninguno: 'ninguno'})
  end
end
