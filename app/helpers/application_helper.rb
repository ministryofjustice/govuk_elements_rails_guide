module ApplicationHelper

  def format_html_example html
    "\n" + html.
      gsub('><', ">\n  <").
      gsub('  </', '</').
      gsub(%r[</span>\n</(label|legend)>]) { "</span>\n  </#{$1}>" }.
      gsub("\n<label", "\n  <label").
      gsub(%r[<input(.+)</label>]) { "  <input#{$1}\n  </label>" }.
      gsub('<span', "\n    <span").
      gsub("\n</span>", "</span>").
      gsub("\n</label>", "\n  </label>").
      gsub("\n</legend>", "</legend>").
      gsub("\n  <input", "\n    <input").
      gsub("\n\n", "\n").
      gsub('    <input class="form-control" ', '  <input class="form-control" ').
      gsub('    <input aria-describedby', '  <input aria-describedby').
      gsub(%r[/>(.+)]) { "/>\n    #{$1}" }.
      gsub('  <li', '    <li').
      gsub('</li', '    </li').
      gsub('</ul', '  </ul').
      gsub('  <a', '      <a')
  end

  def format_form_code form_code
    form_code.
      sub(',', ",\n     ").
      gsub(', :', ",\n          :")
  end
end
