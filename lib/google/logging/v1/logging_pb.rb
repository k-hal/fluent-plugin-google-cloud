# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/logging/v1/logging.proto

require 'google/protobuf'

require 'google/logging/v1/log_entry_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.logging.v1.Log" do
    optional :name, :string, 1
    optional :display_name, :string, 2
    optional :payload_type, :string, 3
  end
  add_message "google.logging.v1.LogService" do
    optional :name, :string, 1
    repeated :index_keys, :string, 2
  end
  add_message "google.logging.v1.ListLogsRequest" do
    optional :project_name, :string, 1
    optional :service_name, :string, 4
    optional :service_index_prefix, :string, 5
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.logging.v1.ListLogsResponse" do
    repeated :logs, :message, 1, "google.logging.v1.Log"
    optional :next_page_token, :string, 2
  end
  add_message "google.logging.v1.DeleteLogRequest" do
    optional :log_name, :string, 1
  end
  add_message "google.logging.v1.WriteLogEntriesRequest" do
    optional :log_name, :string, 1
    map :common_labels, :string, :string, 3
    repeated :entries, :message, 4, "google.logging.v1.LogEntry"
    optional :partial_success, :bool, 5
  end
  add_message "google.logging.v1.WriteLogEntriesResponse" do
  end
  add_message "google.logging.v1.WriteLogEntriesPartialErrors" do
    map :log_entry_errors, :int32, :message, 1, "google.rpc.Status"
  end
  add_message "google.logging.v1.ListLogServicesRequest" do
    optional :project_name, :string, 1
    optional :page_size, :int32, 3
    optional :page_token, :string, 4
  end
  add_message "google.logging.v1.ListLogServicesResponse" do
    repeated :log_services, :message, 1, "google.logging.v1.LogService"
    optional :next_page_token, :string, 2
  end
  add_message "google.logging.v1.ListLogServiceIndexesRequest" do
    optional :service_name, :string, 1
    optional :index_prefix, :string, 2
    optional :depth, :int32, 3
    optional :page_size, :int32, 5
    optional :page_token, :string, 6
  end
  add_message "google.logging.v1.ListLogServiceIndexesResponse" do
    repeated :service_index_prefixes, :string, 1
    optional :next_page_token, :string, 2
  end
end

module Google
  module Logging
    module V1
      Log = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.Log").msgclass
      LogService = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.LogService").msgclass
      ListLogsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.ListLogsRequest").msgclass
      ListLogsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.ListLogsResponse").msgclass
      DeleteLogRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.DeleteLogRequest").msgclass
      WriteLogEntriesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.WriteLogEntriesRequest").msgclass
      WriteLogEntriesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.WriteLogEntriesResponse").msgclass
      WriteLogEntriesPartialErrors = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.WriteLogEntriesPartialErrors").msgclass
      ListLogServicesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.ListLogServicesRequest").msgclass
      ListLogServicesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.ListLogServicesResponse").msgclass
      ListLogServiceIndexesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.ListLogServiceIndexesRequest").msgclass
      ListLogServiceIndexesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v1.ListLogServiceIndexesResponse").msgclass
    end
  end
end
