# typed: strong

module Onlyfansapi
  module Models
    module Statistics
      class ReachGetProfileVisitorsParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Statistics::ReachGetProfileVisitorsParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # The end date for the period.
        sig { returns(String) }
        attr_accessor :end_date

        # The start date for the period
        sig { returns(String) }
        attr_accessor :start_date

        # Optionally, filter the results by `chart` or `topCountries`. See example
        # responses.
        sig do
          returns(
            T.nilable(
              Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Filter::OrSymbol
            )
          )
        end
        attr_accessor :filter

        # Number of results to return
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit

        # Filter all / users / guests
        sig do
          returns(
            T.nilable(
              Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Type::OrSymbol
            )
          )
        end
        attr_accessor :type

        sig do
          params(
            account: String,
            end_date: String,
            start_date: String,
            filter:
              T.nilable(
                Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Filter::OrSymbol
              ),
            limit: T.nilable(Integer),
            type:
              T.nilable(
                Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Type::OrSymbol
              ),
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # The end date for the period.
          end_date:,
          # The start date for the period
          start_date:,
          # Optionally, filter the results by `chart` or `topCountries`. See example
          # responses.
          filter: nil,
          # Number of results to return
          limit: nil,
          # Filter all / users / guests
          type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              end_date: String,
              start_date: String,
              filter:
                T.nilable(
                  Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Filter::OrSymbol
                ),
              limit: T.nilable(Integer),
              type:
                T.nilable(
                  Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Type::OrSymbol
                ),
              request_options: Onlyfansapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Optionally, filter the results by `chart` or `topCountries`. See example
        # responses.
        module Filter
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Filter
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHART =
            T.let(
              :chart,
              Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Filter::TaggedSymbol
            )
          TOP_COUNTRIES =
            T.let(
              :topCountries,
              Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Filter::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Filter::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter all / users / guests
        module Type
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOTAL =
            T.let(
              :total,
              Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Type::TaggedSymbol
            )
          USERS =
            T.let(
              :users,
              Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Type::TaggedSymbol
            )
          GUESTS =
            T.let(
              :guests,
              Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
