module PagesHelper
    def twitter_parser tweet
        regexp = %r{
            \b
            (
                (?: [a-z][\w-]+:
                    (?: /{1,3} | [a-z0-9%] ) |
                    www\d{0,3}[.] |
                    [a-z0-9.\-]+[.][a-z]{2,4}/
                )
                (?:
                    [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
                )+
                (?:
                    \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
                    [^\s`!()\[\]{};:'".,<>?\u00AB\u00BB\u201C\u2018\u2019]
                )
            )
        }ix

        tweet.gsub(regexp) do |url|
            "<a href=#{url} target='_blank'>#{url}</a>"
        end.html_safe
    end
end