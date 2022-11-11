class AuditLogPresenter < BasePresenter
  def display_text
    "You added a #{@model.class.to_s.downcase} called '#{@model.title}' on #{@model.created_at.strftime('%m/%d/%y')}
    at #{@model.created_at.strftime('%I:%M%p')}"
  end
end
