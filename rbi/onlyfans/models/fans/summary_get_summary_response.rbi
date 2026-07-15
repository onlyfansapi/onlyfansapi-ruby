# typed: strong

module Onlyfans
  module Models
    module Fans
      class SummaryGetSummaryResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Fans::SummaryGetSummaryResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :analyzed_message_count

        sig { params(analyzed_message_count: Integer).void }
        attr_writer :analyzed_message_count

        sig { returns(T.nilable(String)) }
        attr_accessor :error_message

        sig { returns(T.nilable(String)) }
        attr_reader :last_analyzed_at

        sig { params(last_analyzed_at: String).void }
        attr_writer :last_analyzed_at

        sig { returns(T.nilable(String)) }
        attr_reader :last_buy_date

        sig { params(last_buy_date: String).void }
        attr_writer :last_buy_date

        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::Fans::SummaryGetSummaryResponse::SummaryData
            )
          )
        end
        attr_reader :summary_data

        sig do
          params(
            summary_data:
              Onlyfans::Models::Fans::SummaryGetSummaryResponse::SummaryData::OrHash
          ).void
        end
        attr_writer :summary_data

        sig do
          params(
            analyzed_message_count: Integer,
            error_message: T.nilable(String),
            last_analyzed_at: String,
            last_buy_date: String,
            status: String,
            summary_data:
              Onlyfans::Models::Fans::SummaryGetSummaryResponse::SummaryData::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          analyzed_message_count: nil,
          error_message: nil,
          last_analyzed_at: nil,
          last_buy_date: nil,
          status: nil,
          summary_data: nil
        )
        end

        sig do
          override.returns(
            {
              analyzed_message_count: Integer,
              error_message: T.nilable(String),
              last_analyzed_at: String,
              last_buy_date: String,
              status: String,
              summary_data:
                Onlyfans::Models::Fans::SummaryGetSummaryResponse::SummaryData
            }
          )
        end
        def to_hash
        end

        class SummaryData < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Fans::SummaryGetSummaryResponse::SummaryData,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :content_preferences

          sig { params(content_preferences: String).void }
          attr_writer :content_preferences

          sig { returns(T.nilable(String)) }
          attr_reader :family_pets

          sig { params(family_pets: String).void }
          attr_writer :family_pets

          sig { returns(T.nilable(String)) }
          attr_reader :hobbies

          sig { params(hobbies: String).void }
          attr_writer :hobbies

          sig { returns(T.nilable(String)) }
          attr_reader :interests

          sig { params(interests: String).void }
          attr_writer :interests

          sig { returns(T.nilable(String)) }
          attr_reader :kinks

          sig { params(kinks: String).void }
          attr_writer :kinks

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :other_notes

          sig { params(other_notes: String).void }
          attr_writer :other_notes

          sig { returns(T.nilable(String)) }
          attr_reader :preferred_name

          sig { params(preferred_name: String).void }
          attr_writer :preferred_name

          sig { returns(T.nilable(String)) }
          attr_reader :requests

          sig { params(requests: String).void }
          attr_writer :requests

          sig { returns(T.nilable(String)) }
          attr_reader :spend_cadence

          sig { params(spend_cadence: String).void }
          attr_writer :spend_cadence

          sig { returns(T.nilable(String)) }
          attr_reader :themes

          sig { params(themes: String).void }
          attr_writer :themes

          sig { returns(T.nilable(String)) }
          attr_reader :travel_plans

          sig { params(travel_plans: String).void }
          attr_writer :travel_plans

          sig do
            params(
              content_preferences: String,
              family_pets: String,
              hobbies: String,
              interests: String,
              kinks: String,
              name: String,
              other_notes: String,
              preferred_name: String,
              requests: String,
              spend_cadence: String,
              themes: String,
              travel_plans: String
            ).returns(T.attached_class)
          end
          def self.new(
            content_preferences: nil,
            family_pets: nil,
            hobbies: nil,
            interests: nil,
            kinks: nil,
            name: nil,
            other_notes: nil,
            preferred_name: nil,
            requests: nil,
            spend_cadence: nil,
            themes: nil,
            travel_plans: nil
          )
          end

          sig do
            override.returns(
              {
                content_preferences: String,
                family_pets: String,
                hobbies: String,
                interests: String,
                kinks: String,
                name: String,
                other_notes: String,
                preferred_name: String,
                requests: String,
                spend_cadence: String,
                themes: String,
                travel_plans: String
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
