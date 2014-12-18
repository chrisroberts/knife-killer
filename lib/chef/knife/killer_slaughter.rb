require 'knife-killer'

class Chef
  class Knife
    class KillerSlaughter < Knife

      include KnifeKiller::Common

      banner 'knife killer slaughter SEARCH'

      option(:over_minutes,
        :short => '-M INT',
        :long => '--minutes-since-checkin INT',
        :description => 'Kill all that have not checked for more than given time'
      )

      def run
        if(config[:over_minutes])
          cutoff = Time.now.to_f - (config[:over_minutes].to_i * 60)
          term = "ohai_time:[0.0 TO #{cutoff}]"
        end
        result = Chef::Search::Query.new.search(:node, [name_args.first, term].flatten.compact.join(' AND '))
        if(result.first.empty?)
          warn 'No results found!'
        else
          confirm "Found #{result.first.size} matches. Proceed"
          result.first.each do |node|
            scrub(node.name)
          end
        end
      end

    end
  end
end
