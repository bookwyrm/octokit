module Octokit
  class Client
    module RateLimit
      def ratelimit
        agent.start.data.rels[:rate_limit].get.headers['X-RateLimit-Limit'].to_i
      end
      alias rate_limit ratelimit

      def ratelimit_remaining
        agent.start.data.rels[:rate_limit].get.headers['X-RateLimit-Remaining'].to_i
      end
      alias rate_limit_remaining ratelimit_remaining
    end
  end
end
