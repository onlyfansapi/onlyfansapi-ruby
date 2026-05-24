# typed: strong

module Onlyfansapi
  module Models
    module Engagement
      module Messages
        class DirectMessageListParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Engagement::Messages::DirectMessageListParams,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          # The latest message to retrieve. Keep empty to get all. MUST BE DATE AFTER
          # `startDate`. This is also used for pagination.
          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          # Number of messages to return (default = 10)
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Optional offset for manual pagination.
          sig { returns(T.nilable(Integer)) }
          attr_reader :offset

          sig { params(offset: Integer).void }
          attr_writer :offset

          # Optionally, filter by message text.
          sig { returns(T.nilable(String)) }
          attr_reader :query

          sig { params(query: String).void }
          attr_writer :query

          # The earliest message to retrieve. Keep empty to get all.
          sig { returns(T.nilable(String)) }
          attr_reader :start_date

          sig { params(start_date: String).void }
          attr_writer :start_date

          sig do
            params(
              account: String,
              end_date: String,
              limit: Integer,
              offset: Integer,
              query: String,
              start_date: String,
              request_options: Onlyfansapi::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account:,
            # The latest message to retrieve. Keep empty to get all. MUST BE DATE AFTER
            # `startDate`. This is also used for pagination.
            end_date: nil,
            # Number of messages to return (default = 10)
            limit: nil,
            # Optional offset for manual pagination.
            offset: nil,
            # Optionally, filter by message text.
            query: nil,
            # The earliest message to retrieve. Keep empty to get all.
            start_date: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account: String,
                end_date: String,
                limit: Integer,
                offset: Integer,
                query: String,
                start_date: String,
                request_options: Onlyfansapi::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
