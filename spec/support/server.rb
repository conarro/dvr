require 'rubygems'
require 'sinatra'

before { request.path_info = request.path_info + '/' + request.query_string }
post 'api/v1/har_records' do
 '{"job_id":"00c5ff51ca644e3f3de14dd5"}'
end

get '/api/v1/har_records/account_id=1' do
 '{"count":1,"har_records":{"1940":{"id":"1940","source_url":null,"wait_time":null,"dns_time":null,"send_time":null,"connect_time":null,"blocked_time":null,"receive_time":null,"browser":null,"creator":null,"domain":null,"har_url":"https://s3.amazonaws.com/checkdata.rigor.com/49.harp","entry_count":null,"error_count":null,"dom_load_time":null,"page_load_time":null,"server_time":null,"page_size":null,"client_error_count":null,"server_error_count":null,"connection_error_count":null,"created_at":"2013-12-09T22:40:54Z","updated_at":"2013-12-09T22:40:54Z","started_date_time":null,"account_id":1,"check_id":1,"check_run_history_id":1,"location_id":1,"image_count":null,"javascript_count":null,"css_count":null,"html_count":null,"flash_count":null,"other_count":null,"run_record_id":null}},"results":[{"key":"har_records","id":"1940"}]}'
end

get '/api/v1/har_records/check_id=1' do
 '{"count":1,"har_records":{"1941":{"id":"1941","source_url":null,"wait_time":null,"dns_time":null,"send_time":null,"connect_time":null,"blocked_time":null,"receive_time":null,"browser":null,"creator":null,"domain":null,"har_url":"https://s3.amazonaws.com/checkdata.rigor.com/50.harp","entry_count":null,"error_count":null,"dom_load_time":null,"page_load_time":null,"server_time":null,"page_size":null,"client_error_count":null,"server_error_count":null,"connection_error_count":null,"created_at":"2013-12-09T22:40:54Z","updated_at":"2013-12-09T22:40:54Z","started_date_time":null,"account_id":1,"check_id":1,"check_run_history_id":1,"location_id":1,"image_count":null,"javascript_count":null,"css_count":null,"html_count":null,"flash_count":null,"other_count":null,"run_record_id":null}},"results":[{"key":"har_records","id":"1941"}]}'
end

get '/api/v1/har_records/check_run_history_id=1' do
 '{"count":1,"har_records":{"1937":{"id":"1937","source_url":null,"wait_time":null,"dns_time":null,"send_time":null,"connect_time":null,"blocked_time":null,"receive_time":null,"browser":null,"creator":null,"domain":null,"har_url":"https://s3.amazonaws.com/checkdata.rigor.com/46.harp","entry_count":null,"error_count":null,"dom_load_time":null,"page_load_time":null,"server_time":null,"page_size":null,"client_error_count":null,"server_error_count":null,"connection_error_count":null,"created_at":"2013-12-09T22:40:54Z","updated_at":"2013-12-09T22:40:54Z","started_date_time":null,"account_id":1,"check_id":1,"check_run_history_id":1,"location_id":1,"image_count":null,"javascript_count":null,"css_count":null,"html_count":null,"flash_count":null,"other_count":null,"run_record_id":null}},"results":[{"key":"har_records","id":"1937"}]}'
end

get '/api/v1/har_records/start=2013-11-11&end=2013-11-21' do
 '{"count":1,"har_records":{"1936":{"id":"1936","source_url":null,"wait_time":null,"dns_time":null,"send_time":null,"connect_time":null,"blocked_time":null,"receive_time":null,"browser":null,"creator":null,"domain":null,"har_url":"https://s3.amazonaws.com/checkdata.rigor.com/45.harp","entry_count":null,"error_count":null,"dom_load_time":null,"page_load_time":null,"server_time":null,"page_size":null,"client_error_count":null,"server_error_count":null,"connection_error_count":null,"created_at":"2013-12-09T22:40:54Z","updated_at":"2013-12-09T22:40:54Z","started_date_time":null,"account_id":1,"check_id":1,"check_run_history_id":1,"location_id":1,"image_count":null,"javascript_count":null,"css_count":null,"html_count":null,"flash_count":null,"other_count":null,"run_record_id":null}},"results":[{"key":"har_records","id":"1936"}]}'
end

get '/api/v1/har_records/location_id=1' do
 '{"count":1,"har_records":{"1939":{"id":"1939","source_url":null,"wait_time":null,"dns_time":null,"send_time":null,"connect_time":null,"blocked_time":null,"receive_time":null,"browser":null,"creator":null,"domain":null,"har_url":"https://s3.amazonaws.com/checkdata.rigor.com/48.harp","entry_count":null,"error_count":null,"dom_load_time":null,"page_load_time":null,"server_time":null,"page_size":null,"client_error_count":null,"server_error_count":null,"connection_error_count":null,"created_at":"2013-12-09T22:40:54Z","updated_at":"2013-12-09T22:40:54Z","started_date_time":null,"account_id":1,"check_id":1,"check_run_history_id":1,"location_id":1,"image_count":null,"javascript_count":null,"css_count":null,"html_count":null,"flash_count":null,"other_count":null,"run_record_id":null}},"results":[{"key":"har_records","id":"1939"}]}'
end

get '/api/v1/har_records' do
 '{"count":1,"har_records":{"1938":{"id":"1938","source_url":null,"wait_time":null,"dns_time":null,"send_time":null,"connect_time":null,"blocked_time":null,"receive_time":null,"browser":null,"creator":null,"domain":null,"har_url":"https://s3.amazonaws.com/checkdata.rigor.com/47.harp","entry_count":null,"error_count":null,"dom_load_time":null,"page_load_time":null,"server_time":null,"page_size":null,"client_error_count":null,"server_error_count":null,"connection_error_count":null,"created_at":"2013-12-09T22:40:54Z","updated_at":"2013-12-09T22:40:54Z","started_date_time":null,"account_id":1,"check_id":1,"check_run_history_id":1,"location_id":1,"image_count":null,"javascript_count":null,"css_count":null,"html_count":null,"flash_count":null,"other_count":null,"run_record_id":null}},"results":[{"key":"har_records","id":"1938"}]}'
end

get '/api/v1/har_records/per_page=1&page=1' do
 '{"count":1,"har_records":{"1935":{"id":"1935","source_url":null,"wait_time":null,"dns_time":null,"send_time":null,"connect_time":null,"blocked_time":null,"receive_time":null,"browser":null,"creator":null,"domain":null,"har_url":"https://s3.amazonaws.com/checkdata.rigor.com/44.harp","entry_count":null,"error_count":null,"dom_load_time":null,"page_load_time":null,"server_time":null,"page_size":null,"client_error_count":null,"server_error_count":null,"connection_error_count":null,"created_at":"2013-12-09T22:40:54Z","updated_at":"2013-12-09T22:40:54Z","started_date_time":null,"account_id":1,"check_id":1,"check_run_history_id":1,"location_id":1,"image_count":null,"javascript_count":null,"css_count":null,"html_count":null,"flash_count":null,"other_count":null,"run_record_id":null}},"results":[{"key":"har_records","id":"1935"}]}'
end

post 'api/v1/har_records_bulk' do
 '{"job_id":"b48c6bd17724fd2324a97f4b"}'
end

delete 'api/v1/har_records_bulk/destroy_by_account_id' do
 '{"job_id":"997743e056e5d75ef0a142b4"}'
end

delete 'api/v1/har_records_bulk/destroy_by_check_id' do
 '{"job_id":"d29dcc8754dc997a182f15b5"}'
end

