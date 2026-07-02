# typed: strong

module Onlyfans
  module Models
    module Analytics
      module Financial
        class ProfitabilityGetHistoryResponse < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Analytics::Financial::ProfitabilityGetHistoryResponse,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfans::Models::Analytics::Financial::ProfitabilityGetHistoryResponse::Data
                ]
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                T::Array[
                  Onlyfans::Models::Analytics::Financial::ProfitabilityGetHistoryResponse::Data::OrHash
                ]
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                T::Array[
                  Onlyfans::Models::Analytics::Financial::ProfitabilityGetHistoryResponse::Data::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Onlyfans::Models::Analytics::Financial::ProfitabilityGetHistoryResponse::Data
                  ]
              }
            )
          end
          def to_hash
          end

          class Data < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Analytics::Financial::ProfitabilityGetHistoryResponse::Data,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :active_milestones

            sig { returns(T.nilable(String)) }
            attr_reader :agency_earnings

            sig { params(agency_earnings: String).void }
            attr_writer :agency_earnings

            sig { returns(T.nilable(String)) }
            attr_reader :commission_amount

            sig { params(commission_amount: String).void }
            attr_writer :commission_amount

            sig { returns(T.nilable(String)) }
            attr_reader :commission_rate

            sig { params(commission_rate: String).void }
            attr_writer :commission_rate

            sig { returns(T.nilable(T::Array[T.anything])) }
            attr_reader :costs

            sig { params(costs: T::Array[T.anything]).void }
            attr_writer :costs

            sig { returns(T.nilable(String)) }
            attr_reader :creator_name

            sig { params(creator_name: String).void }
            attr_writer :creator_name

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_commission_for_period

            sig { params(has_commission_for_period: T::Boolean).void }
            attr_writer :has_commission_for_period

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_costs_for_period

            sig { params(has_costs_for_period: T::Boolean).void }
            attr_writer :has_costs_for_period

            sig { returns(T.nilable(String)) }
            attr_reader :margin_percentage

            sig { params(margin_percentage: String).void }
            attr_writer :margin_percentage

            sig { returns(T.nilable(Integer)) }
            attr_reader :month

            sig { params(month: Integer).void }
            attr_writer :month

            sig { returns(T.nilable(Integer)) }
            attr_reader :only_fans_user_id

            sig { params(only_fans_user_id: Integer).void }
            attr_writer :only_fans_user_id

            sig { returns(T.nilable(String)) }
            attr_reader :profit

            sig { params(profit: String).void }
            attr_writer :profit

            sig { returns(T.nilable(String)) }
            attr_reader :projected_net

            sig { params(projected_net: String).void }
            attr_writer :projected_net

            sig { returns(T.nilable(T::Array[T.anything])) }
            attr_reader :rate_periods

            sig { params(rate_periods: T::Array[T.anything]).void }
            attr_writer :rate_periods

            sig { returns(T.nilable(String)) }
            attr_accessor :referral_note

            sig { returns(T.nilable(String)) }
            attr_reader :total_costs

            sig { params(total_costs: String).void }
            attr_writer :total_costs

            sig { returns(T.nilable(Integer)) }
            attr_reader :year

            sig { params(year: Integer).void }
            attr_writer :year

            sig do
              params(
                active_milestones: T.nilable(String),
                agency_earnings: String,
                commission_amount: String,
                commission_rate: String,
                costs: T::Array[T.anything],
                creator_name: String,
                has_commission_for_period: T::Boolean,
                has_costs_for_period: T::Boolean,
                margin_percentage: String,
                month: Integer,
                only_fans_user_id: Integer,
                profit: String,
                projected_net: String,
                rate_periods: T::Array[T.anything],
                referral_note: T.nilable(String),
                total_costs: String,
                year: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              active_milestones: nil,
              agency_earnings: nil,
              commission_amount: nil,
              commission_rate: nil,
              costs: nil,
              creator_name: nil,
              has_commission_for_period: nil,
              has_costs_for_period: nil,
              margin_percentage: nil,
              month: nil,
              only_fans_user_id: nil,
              profit: nil,
              projected_net: nil,
              rate_periods: nil,
              referral_note: nil,
              total_costs: nil,
              year: nil
            )
            end

            sig do
              override.returns(
                {
                  active_milestones: T.nilable(String),
                  agency_earnings: String,
                  commission_amount: String,
                  commission_rate: String,
                  costs: T::Array[T.anything],
                  creator_name: String,
                  has_commission_for_period: T::Boolean,
                  has_costs_for_period: T::Boolean,
                  margin_percentage: String,
                  month: Integer,
                  only_fans_user_id: Integer,
                  profit: String,
                  projected_net: String,
                  rate_periods: T::Array[T.anything],
                  referral_note: T.nilable(String),
                  total_costs: String,
                  year: Integer
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
end
