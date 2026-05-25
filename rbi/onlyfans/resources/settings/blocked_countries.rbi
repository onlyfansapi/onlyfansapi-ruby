# typed: strong

module Onlyfans
  module Resources
    class Settings
      class BlockedCountries
        # Returns the countries blocked from viewing the account.
        sig do
          params(
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Settings::BlockedCountryRetrieveResponse)
        end
        def retrieve(
          # The Account ID
          account,
          request_options: {}
        )
        end

        # Updates the countries blocked from viewing the account.
        sig do
          params(
            account: String,
            blocked_countries: T::Array[String],
            blocked_states: T::Array[String],
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Settings::BlockedCountryUpdateResponse)
        end
        def update(
          # The Account ID
          account,
          # List of all ISO 3166-1 alpha-2 country codes to block including existing ones.
          # If you want to unblock all countries, set this to an empty array or `null`.
          blocked_countries:,
          # Blocked states payload forwarded to OnlyFans. Defaults to an empty array.
          blocked_states: nil,
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
