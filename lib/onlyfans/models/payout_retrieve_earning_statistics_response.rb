# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Payouts#retrieve_earning_statistics
    class PayoutRetrieveEarningStatisticsResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta]
      #   @param data [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data]

      # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits]

        # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta#_cache
        class Cache < Onlyfans::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfans::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta#_credits
        class Credits < Onlyfans::Internal::Type::BaseModel
          # @!attribute balance
          #
          #   @return [Integer, nil]
          optional :balance, Integer

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!attribute used
          #
          #   @return [Integer, nil]
          optional :used, Integer

          # @!method initialize(balance: nil, note: nil, used: nil)
          #   @param balance [Integer]
          #   @param note [String]
          #   @param used [Integer]
        end

        # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta#_rate_limits
        class RateLimits < Onlyfans::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [Integer, nil]
          optional :limit_day, Integer

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute remaining_day
          #
          #   @return [Integer, nil]
          optional :remaining_day, Integer

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [Integer]
          #   @param limit_minute [Integer]
          #   @param remaining_day [Integer]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List, nil]
        optional :list, -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List }

        # @!method initialize(list: nil)
        #   @param list [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List]

        # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data#list
        class List < Onlyfans::Internal::Type::BaseModel
          # @!attribute months
          #
          #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months, nil]
          optional :months, -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months }

          # @!attribute total
          #
          #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total, nil]
          optional :total, -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total }

          # @!method initialize(months: nil, total: nil)
          #   @param months [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months]
          #   @param total [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total]

          # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List#months
          class Months < Onlyfans::Internal::Type::BaseModel
            # @!attribute number_1735689661
            #
            #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661, nil]
            optional :number_1735689661,
                     -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661 },
                     api_name: :"1735689661"

            # @!method initialize(number_1735689661: nil)
            #   @param number_1735689661 [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661]

            # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months#number_1735689661
            class Const1735689661 < Onlyfans::Internal::Type::BaseModel
              # @!attribute subscribes
              #
              #   @return [Array<Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe>, nil]
              optional :subscribes,
                       -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe] }

              # @!attribute tips
              #
              #   @return [Array<Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip>, nil]
              optional :tips,
                       -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip] }

              # @!attribute total_gross
              #
              #   @return [Integer, nil]
              optional :total_gross, Integer

              # @!attribute total_net
              #
              #   @return [Integer, nil]
              optional :total_net, Integer

              # @!method initialize(subscribes: nil, tips: nil, total_gross: nil, total_net: nil)
              #   @param subscribes [Array<Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe>]
              #   @param tips [Array<Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip>]
              #   @param total_gross [Integer]
              #   @param total_net [Integer]

              class Subscribe < Onlyfans::Internal::Type::BaseModel
                # @!attribute gross
                #
                #   @return [Integer, nil]
                optional :gross, Integer

                # @!attribute net
                #
                #   @return [Integer, nil]
                optional :net, Integer

                # @!attribute time
                #
                #   @return [Integer, nil]
                optional :time, Integer

                # @!method initialize(gross: nil, net: nil, time: nil)
                #   @param gross [Integer]
                #   @param net [Integer]
                #   @param time [Integer]
              end

              class Tip < Onlyfans::Internal::Type::BaseModel
                # @!attribute gross
                #
                #   @return [Integer, nil]
                optional :gross, Integer

                # @!attribute net
                #
                #   @return [Integer, nil]
                optional :net, Integer

                # @!attribute time
                #
                #   @return [Integer, nil]
                optional :time, Integer

                # @!method initialize(gross: nil, net: nil, time: nil)
                #   @param gross [Integer]
                #   @param net [Integer]
                #   @param time [Integer]
              end
            end
          end

          # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List#total
          class Total < Onlyfans::Internal::Type::BaseModel
            # @!attribute all
            #
            #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All, nil]
            optional :all, -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All }

            # @!attribute chat_messages
            #
            #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages, nil]
            optional :chat_messages,
                     -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages }

            # @!attribute post
            #
            #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post, nil]
            optional :post, -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post }

            # @!attribute subscribes
            #
            #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes, nil]
            optional :subscribes,
                     -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes }

            # @!attribute tips
            #
            #   @return [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips, nil]
            optional :tips, -> { Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips }

            # @!method initialize(all: nil, chat_messages: nil, post: nil, subscribes: nil, tips: nil)
            #   @param all [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All]
            #   @param chat_messages [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages]
            #   @param post [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post]
            #   @param subscribes [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes]
            #   @param tips [Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips]

            # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total#all
            class All < Onlyfans::Internal::Type::BaseModel
              # @!attribute total_gross
              #
              #   @return [Float, nil]
              optional :total_gross, Float

              # @!attribute total_net
              #
              #   @return [Float, nil]
              optional :total_net, Float

              # @!method initialize(total_gross: nil, total_net: nil)
              #   @param total_gross [Float]
              #   @param total_net [Float]
            end

            # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total#chat_messages
            class ChatMessages < Onlyfans::Internal::Type::BaseModel
              # @!attribute total_gross
              #
              #   @return [Float, nil]
              optional :total_gross, Float

              # @!attribute total_net
              #
              #   @return [Float, nil]
              optional :total_net, Float

              # @!method initialize(total_gross: nil, total_net: nil)
              #   @param total_gross [Float]
              #   @param total_net [Float]
            end

            # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total#post
            class Post < Onlyfans::Internal::Type::BaseModel
              # @!attribute total_gross
              #
              #   @return [Float, nil]
              optional :total_gross, Float

              # @!attribute total_net
              #
              #   @return [Float, nil]
              optional :total_net, Float

              # @!method initialize(total_gross: nil, total_net: nil)
              #   @param total_gross [Float]
              #   @param total_net [Float]
            end

            # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total#subscribes
            class Subscribes < Onlyfans::Internal::Type::BaseModel
              # @!attribute total_gross
              #
              #   @return [Float, nil]
              optional :total_gross, Float

              # @!attribute total_net
              #
              #   @return [Float, nil]
              optional :total_net, Float

              # @!method initialize(total_gross: nil, total_net: nil)
              #   @param total_gross [Float]
              #   @param total_net [Float]
            end

            # @see Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total#tips
            class Tips < Onlyfans::Internal::Type::BaseModel
              # @!attribute total_gross
              #
              #   @return [Float, nil]
              optional :total_gross, Float

              # @!attribute total_net
              #
              #   @return [Float, nil]
              optional :total_net, Float

              # @!method initialize(total_gross: nil, total_net: nil)
              #   @param total_gross [Float]
              #   @param total_net [Float]
            end
          end
        end
      end
    end
  end
end
