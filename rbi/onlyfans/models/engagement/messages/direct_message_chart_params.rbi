# typed: strong

module Onlyfans
  module Models
    module Engagement
      module Messages
        class DirectMessageChartParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Engagement::Messages::DirectMessageChartParams,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          # End of the chart window in `Y-m-d H:i:s` format. It must be after `startDate`.
          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          # Start of the chart window in `Y-m-d H:i:s` format.
          sig { returns(T.nilable(String)) }
          attr_reader :start_date

          sig { params(start_date: String).void }
          attr_writer :start_date

          # Include `total` and `delta` aggregates in the response. Defaults to `true`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :with_total

          sig { params(with_total: T::Boolean).void }
          attr_writer :with_total

          sig do
            params(
              account: String,
              end_date: String,
              start_date: String,
              with_total: T::Boolean,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account:,
            # End of the chart window in `Y-m-d H:i:s` format. It must be after `startDate`.
            end_date: nil,
            # Start of the chart window in `Y-m-d H:i:s` format.
            start_date: nil,
            # Include `total` and `delta` aggregates in the response. Defaults to `true`.
            with_total: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account: String,
                end_date: String,
                start_date: String,
                with_total: T::Boolean,
                request_options: Onlyfans::RequestOptions
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
