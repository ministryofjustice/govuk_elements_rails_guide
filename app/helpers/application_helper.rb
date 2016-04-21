module ApplicationHelper

  def format_html_example html
    "\n" + html.
      gsub('><', ">\n  <").
      gsub('  </', '</').
      gsub(%r[</span>\n</(label|legend)>], '</span></\1>').
      gsub("\n<label", "\n  <label").
      gsub(%r[<input(.+)</label>]) { "  <input#{$1}\n  </label>" }
  end

  def format_form_code form_code
    form_code.
      sub(',', ",\n     ").
      gsub(', :', ",\n          :")
  end
end
