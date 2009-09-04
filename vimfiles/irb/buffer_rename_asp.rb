Dir["*.asp"].each do |file_path|
  ruby_path = file_path.gsub(/.asp$/, ".html.erb")
  puts "%-30s -> %s" % [file_path, ruby_path]
  FileUtils.mv(file_path, ruby_path)
end

