# -*- coding: utf-8 -*- #

module Rouge
  module Lexers
    class Docker < RegexLexer
      title "Docker"
      desc "Dockerfile syntax"
      tag 'docker'
      aliases 'docker', 'dockerfile'
      filenames 'Dockerfile', '*.docker'
      mimetypes 'text/x-dockerfile-config'

      KEYWORDS = %w(
        FROM MAINTAINER RUN CMD EXPOSE ENV ADD ENTRYPOINT VOLUME WORKDIR
      ).join('|')

      state :root do
        rule /^(ONBUILD)(\s+)(#{KEYWORDS})\b/im do |m|
          groups Keyword, Text::Whitespace, Keyword
        end

        rule /^(#{KEYWORDS})\b(.*)/i do |m|
          groups Keyword, Str
        end

        rule /#.*?$/, Comment

        rule /(.*\\\n)*.+/ do
          delegate Shell
        end

        rule /$\s*/m, Text
      end
    end
  end
end

