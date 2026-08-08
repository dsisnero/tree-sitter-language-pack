require "spec"
require "json"
require "socket"
# Returns whether a URL's TCP endpoint is accepting connections.
def alef_mock_ready?(url : String) : Bool
  host, port = url.lchop("http://").split(':', 2)
  begin
    TCPSocket.new(host, port.to_i).close
    true
  rescue
    false
  end
end
require "tree_sitter_language_pack"
