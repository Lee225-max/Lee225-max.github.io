# _plugins/copy_assets.rb
Jekyll::Hooks.register :site, :post_write do |site|
  source_dir = File.join(site.source, 'assets')
  dest_dir = File.join(site.dest, 'assets')

  if File.directory?(source_dir)
    # 删除目标目录（如果存在）以确保干净复制
    FileUtils.rm_rf(dest_dir) if File.exist?(dest_dir)
    # 复制整个 assets 目录
    FileUtils.cp_r(source_dir, dest_dir)
    Jekyll.logger.info("Assets复制插件：", "已手动复制 'assets' 目录到输出站点。")
  else
    Jekyll.logger.warn("Assets复制插件：", "源目录 '#{source_dir}' 不存在，跳过复制。")
  end
end
