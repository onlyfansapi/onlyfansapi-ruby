# typed: strong

module Onlyfans
  module Models
    module SavedForLater
      module Posts
        class SettingEnableOrUpdateAutomaticPostingParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          # The automatic posting interval (in hours)
          sig do
            returns(
              Onlyfans::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::OrInteger
            )
          end
          attr_accessor :period

          sig do
            params(
              account: String,
              period:
                Onlyfans::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::OrInteger,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account:,
            # The automatic posting interval (in hours)
            period:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account: String,
                period:
                  Onlyfans::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::OrInteger,
                request_options: Onlyfans::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The automatic posting interval (in hours)
          module Period
            extend Onlyfans::Internal::Type::Enum

            TaggedInteger =
              T.type_alias do
                T.all(
                  Integer,
                  Onlyfans::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period
                )
              end
            OrInteger = T.type_alias { Integer }

            PERIOD_6 =
              T.let(
                6,
                Onlyfans::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::TaggedInteger
              )
            PERIOD_12 =
              T.let(
                12,
                Onlyfans::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::TaggedInteger
              )
            PERIOD_24 =
              T.let(
                24,
                Onlyfans::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::TaggedInteger
              )
            PERIOD_48 =
              T.let(
                48,
                Onlyfans::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::TaggedInteger
              )

            sig do
              override.returns(
                T::Array[
                  Onlyfans::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::TaggedInteger
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
