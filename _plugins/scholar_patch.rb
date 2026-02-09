# _plugins/scholar_patch.rb
# 这个补丁用于修复 jekyll-scholar 在 Ruby 3.0+ 上的兼容性问题

module Jekyll
  module Scholar
    class Utilities
      # 覆盖旧的 split_arguments 方法
      def split_arguments(arguments)
        tokens = arguments.strip.split(/\s+/)
        args = []
        opts = {}

        tokens.each do |token|
          if token.match?(/^--/)
            key, value = token.sub(/^--/, '').split('=')
            opts[key] = value || true
          elsif token.match?(/^-/)
            key = token.sub(/^-/, '')
            opts[key] = true
          else
            args << token
          end
        end

        [args, opts]
      end
    end
  end
end
