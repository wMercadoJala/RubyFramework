class IterationsGet

  def self.call_and_return_response(client, method, id_project)
    end_point = '/projects/%s/iterations/' % id_project
    http_request = client.get_request(method, end_point)
    http_response = client.execute_request(client.get_connection, http_request)
    http_response
  end

end