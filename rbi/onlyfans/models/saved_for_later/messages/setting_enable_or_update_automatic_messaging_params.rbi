# typed: strong

module Onlyfans
  module Models
    module SavedForLater
      module Messages
        class SettingEnableOrUpdateAutomaticMessagingParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          # The automatic messaging interval (in hours)
          sig do
            returns(
              Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::OrInteger
            )
          end
          attr_accessor :period

          sig do
            params(
              account: String,
              period:
                Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::OrInteger,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account:,
            # The automatic messaging interval (in hours)
            period:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account: String,
                period:
                  Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::OrInteger,
                request_options: Onlyfans::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The automatic messaging interval (in hours)
          module Period
            extend Onlyfans::Internal::Type::Enum

            TaggedInteger =
              T.type_alias do
                T.all(
                  Integer,
                  Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period
                )
              end
            OrInteger = T.type_alias { Integer }

            PERIOD_6 =
              T.let(
                6,
                Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::TaggedInteger
              )
            PERIOD_12 =
              T.let(
                12,
                Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::TaggedInteger
              )
            PERIOD_24 =
              T.let(
                24,
                Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::TaggedInteger
              )
            PERIOD_48 =
              T.let(
                48,
                Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::TaggedInteger
              )

            sig do
              override.returns(
                T::Array[
                  Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::TaggedInteger
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
end
