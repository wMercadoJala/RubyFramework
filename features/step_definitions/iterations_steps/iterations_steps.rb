When(/^I send a (GET) request to IterationsGet endpoint for project (.*)$/) do |method, id_project|
  require_relative '../../../src/requests/Iterations/iterations_get'
  @http_response = IterationsGet.call_and_return_response(@client, method, id_project)
end

When(/^I send a (GET) request to IterationIdGet endpoint for project (.*) and iteration (.*)$/) do |method, id_project, id_iteration|
  require_relative '../../../src/requests/Iterations/iterations_id_get'
  @http_response = IterationsIdGet.call_and_return_response(@client, method, id_project, id_iteration)
end

When(/^I send a (GET) request to IterationIdAnalyticsGet endpoint for project (.*) and iteration (.*)$/) do |method, id_project, id_iteration|
  require_relative '../../../src/requests/Iterations/iterations_id_analytics_get'
  @http_response = IterationsIdAnalyticsGet.call_and_return_response(@client, method, id_project, id_iteration)
end