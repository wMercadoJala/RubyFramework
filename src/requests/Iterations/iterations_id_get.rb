class IterationsIdGet

  def self.call_and_return_response(client, method, id_project, id_iteration)
    end_point = '/projects/%s/iterations/%s' % [id_project, id_iteration]
    http_request = client.get_request(method, end_point)
    http_response = client.execute_request(client.get_connection, http_request)
    http_response
  end

end