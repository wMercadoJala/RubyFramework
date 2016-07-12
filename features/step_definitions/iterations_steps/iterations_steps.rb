When(/^I send a (GET) request to IterationsGet endpoint for project (.*)$/) do |method, id_project|
  require_relative '../../../src/requests/Iterations/iterations_get'
  require_relative '../../../src/data/iteration'
  require_relative '../../../src/helpers/data_helper'
  @http_response = IterationsGet.call_and_return_response(@client, method, id_project)

  array_iterations_json = JSON.parse(@http_response.body)
  array_iterations = []
  array_iterations_json.each do | iteration |
    var = DataHelper.rehash_to_symbol_keys(iteration)
    obj_iteration = Iteration.new(var)
    array_iterations.push(obj_iteration)
  end

  array_iterations

end

When(/^I send a (GET) request to IterationIdGet endpoint for project (.*) and iteration (.*)$/) do |method, id_project, id_iteration|
  require_relative '../../../src/requests/Iterations/iterations_id_get'
  @http_response = IterationsIdGet.call_and_return_response(@client, method, id_project, id_iteration)

  obj_iteration = JSON.parse(@http_response.body)

  var = DataHelper.rehash_to_symbol_keys(obj_iteration)
  obj_iteration = Iteration.new(var)
  obj_iteration.project_id.to_s == id_project
end

When(/^I send a (GET) request to IterationIdAnalyticsGet endpoint for project (.*) and iteration (.*)$/) do |method, id_project, id_iteration|
  require_relative '../../../src/requests/Iterations/iterations_id_analytics_get'
  @http_response = IterationsIdAnalyticsGet.call_and_return_response(@client, method, id_project, id_iteration)
end


When(/^I send a (GET) request to Story endpoint for project (.*)$/) do |method, id_project, id_iteration|
  require_relative '../../../src/requests/Story/Story_get'
  @http_response = StoryGet.call_and_return_response(@client, method, id_project)
end