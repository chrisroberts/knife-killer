require 'knife-killer/version'

module KnifeKiller
  module Common

    def scrub(name)
      confirm "Delete node and client for #{name}"
      begin
        node = Chef::Node.load(name)
        node.destroy
        ui.info "Node #{name}: #{ui.color('deleted', :red)}"
      rescue => e
        ui.warn "Node #{name}: #{ui.color('FAILED!', :bold)} - #{e.class}: #{e}"
      end
      begin
        client = Chef::ApiClient.load(name)
        client.destroy
        ui.info "Client #{name}: #{ui.color('deleted', :red)}"
      rescue => e
        ui.warn "Client #{name}: #{ui.color('FAILED!', :bold)} - #{e.class}: #{e}"
      end
    end

  end
end
