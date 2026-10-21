# typed: strong

module Onlyfans
  module Resources
    class Statistics
      class Reach
        # Get the number of profile visitors for a given period.
        sig do
          params(
            account: String,
            end_date: String,
            start_date: String,
            filter:
              T.nilable(
                Onlyfans::Statistics::ReachGetProfileVisitorsParams::Filter::OrSymbol
              ),
            limit: T.nilable(Integer),
            type:
              T.nilable(
                Onlyfans::Statistics::ReachGetProfileVisitorsParams::Type::OrSymbol
              ),
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(
            Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::Variants
          )
        end
        def get_profile_visitors(
          # The Account ID
          account,
          # The end date for the period.
          end_date:,
          # The start date for the period.
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

        # @api private
        sig { params(client: Onlyfans::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
