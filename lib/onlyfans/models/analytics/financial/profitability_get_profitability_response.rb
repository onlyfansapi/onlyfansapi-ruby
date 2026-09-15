# frozen_string_literal: true

module Onlyfans
  module Models
    module Analytics
      module Financial
        # @see Onlyfans::Resources::Analytics::Financial::Profitability#get_profitability
        class ProfitabilityGetProfitabilityResponse < Onlyfans::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Onlyfans::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponse::Data>, nil]
          optional :data,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponse::Data] }

          # @!method initialize(data: nil)
          #   @param data [Array<Onlyfans::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponse::Data>]

          class Data < Onlyfans::Internal::Type::BaseModel
            # @!attribute active_milestones
            #
            #   @return [String, nil]
            optional :active_milestones, String, api_name: :activeMilestones, nil?: true

            # @!attribute agency_earnings
            #
            #   @return [String, nil]
            optional :agency_earnings, String, api_name: :agencyEarnings

            # @!attribute commission_amount
            #
            #   @return [String, nil]
            optional :commission_amount, String, api_name: :commissionAmount

            # @!attribute commission_rate
            #
            #   @return [String, nil]
            optional :commission_rate, String, api_name: :commissionRate

            # @!attribute costs
            #
            #   @return [Array<Object>, nil]
            optional :costs, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

            # @!attribute creator_name
            #
            #   @return [String, nil]
            optional :creator_name, String, api_name: :creatorName

            # @!attribute has_commission_for_period
            #
            #   @return [Boolean, nil]
            optional :has_commission_for_period,
                     Onlyfans::Internal::Type::Boolean,
                     api_name: :hasCommissionForPeriod

            # @!attribute has_costs_for_period
            #
            #   @return [Boolean, nil]
            optional :has_costs_for_period, Onlyfans::Internal::Type::Boolean, api_name: :hasCostsForPeriod

            # @!attribute margin_percentage
            #
            #   @return [String, nil]
            optional :margin_percentage, String, api_name: :marginPercentage

            # @!attribute month
            #
            #   @return [Integer, nil]
            optional :month, Integer

            # @!attribute only_fans_user_id
            #
            #   @return [Integer, nil]
            optional :only_fans_user_id, Integer, api_name: :onlyFansUserId

            # @!attribute profit
            #
            #   @return [String, nil]
            optional :profit, String

            # @!attribute projected_net
            #
            #   @return [String, nil]
            optional :projected_net, String, api_name: :projectedNet

            # @!attribute rate_periods
            #
            #   @return [Array<Object>, nil]
            optional :rate_periods,
                     Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown],
                     api_name: :ratePeriods

            # @!attribute referral_note
            #
            #   @return [String, nil]
            optional :referral_note, String, api_name: :referralNote, nil?: true

            # @!attribute total_costs
            #
            #   @return [String, nil]
            optional :total_costs, String, api_name: :totalCosts

            # @!attribute year
            #
            #   @return [Integer, nil]
            optional :year, Integer

            # @!method initialize(active_milestones: nil, agency_earnings: nil, commission_amount: nil, commission_rate: nil, costs: nil, creator_name: nil, has_commission_for_period: nil, has_costs_for_period: nil, margin_percentage: nil, month: nil, only_fans_user_id: nil, profit: nil, projected_net: nil, rate_periods: nil, referral_note: nil, total_costs: nil, year: nil)
            #   @param active_milestones [String, nil]
            #   @param agency_earnings [String]
            #   @param commission_amount [String]
            #   @param commission_rate [String]
            #   @param costs [Array<Object>]
            #   @param creator_name [String]
            #   @param has_commission_for_period [Boolean]
            #   @param has_costs_for_period [Boolean]
            #   @param margin_percentage [String]
            #   @param month [Integer]
            #   @param only_fans_user_id [Integer]
            #   @param profit [String]
            #   @param projected_net [String]
            #   @param rate_periods [Array<Object>]
            #   @param referral_note [String, nil]
            #   @param total_costs [String]
            #   @param year [Integer]
          end
        end
      end
    end
  end
end
