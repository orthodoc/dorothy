# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'livereload' do
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{templates/(/pages/\w+/(.+\.(rhtml|html|builder))).*}) { |m| "/pages/#{m[3]}"}
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end
