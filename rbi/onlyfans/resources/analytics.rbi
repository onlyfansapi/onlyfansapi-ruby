# typed: strong

module Onlyfans
  module Resources
    class Analytics
      # APIs for retrieving financial analytics data
      sig { returns(Onlyfans::Resources::Analytics::Financial) }
      attr_reader :financial

      # APIs for retrieving summary analytics data
      sig { returns(Onlyfans::Resources::Analytics::Summary) }
      attr_reader :summary

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
