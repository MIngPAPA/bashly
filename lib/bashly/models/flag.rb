module Bashly
  module Models
    class Flag < Base
      def aliases
        if long and short
          [long, short]
        elsif long
          [long]
        else
          [short]
        end
      end

      def optional
        !required
      end

      def summary
        return "" unless help
        help.split("\n").first
      end

      def usage_string(extended: false)
        result = [aliases.join(", ")]
        result << arg.upcase if arg
        result << "(required)" if required and extended
        result.join " "
      end
    end
  end
end