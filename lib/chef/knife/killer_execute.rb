require 'knife-killer'

class Chef
  class Knife
    class KillerExecute < Knife

      include KnifeKiller::Common

      banner 'knife killer execute NODE_NAME[ NODE_NAME...]'

      def run
        name_args.each do |name|
          scrub(name)
        end
      end

    end
  end
end
