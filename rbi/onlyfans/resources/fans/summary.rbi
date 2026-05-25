# typed: strong

module Onlyfans
  module Resources
    class Fans
      # APIs for generating and retrieving AI-powered fan profile summaries
      class Summary
        # Queue generation or regeneration of an AI profile summary for a fan. Costs 200
        # credits (charged on completion). Use the GET endpoint to poll for results. To
        # regenerate an existing summary, pass `regenerate: true`.
        sig do
          params(
            fan_id: String,
            account: String,
            regenerate: T::Boolean,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Fans::SummaryGenerateSummaryResponse)
        end
        def generate_summary(
          # Path param: Fan's OnlyFans ID
          fan_id,
          # Path param: The Account ID
          account:,
          # Body param: Set to true to regenerate an existing completed summary.
          regenerate: nil,
          request_options: {}
        )
        end

        # Retrieve the AI profile summary for a fan. Poll this endpoint after triggering a
        # generation to check for completion.
        sig do
          params(
            fan_id: String,
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Fans::SummaryGetSummaryResponse)
        end
        def get_summary(
          # Fan's OnlyFans ID
          fan_id,
          # The Account ID
          account:,
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
