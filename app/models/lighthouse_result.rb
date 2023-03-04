class LighthouseResult
  attr_reader :score, :status, :issues

  SCORE_MAPPING = {
    100 => 'Excellent',
    90..99 => 'Good',
    80..89 => 'Fair',
    70..79 => 'Poor',
    0..69 => 'Failed'
  }

  ISSUE_SCORES = {
    'image-alt' => -4,
    'color-contrast' => -3,
    'heading-order' => -3,
    'duplicate-id-active' => -2,
    'link-name' => -2,
    'label' => -2,
    'frame-title' => -2
  }

  def initialize(json_data)
    @data = JSON.parse(json_data)
    @score = 100
    @issues = []

    calculate_score_and_issues
    calculate_status
  end

  private

  def calculate_score_and_issues
    @data['audits'].each do |audit, data|
      next if data['score'].nil?
      if data['score'] < 1
        @score -= 1
        issues << Issue.new(data['title'], data.dig('details', 'selector'))
      end
      ISSUE_SCORES.each do |issue_type, score|
        if data.dig('details', 'items')&.any? { |item| item['type'] == issue_type }
          @score += score
          issues << Issue.new("#{issue_type} => #{data['title']}", data.dig('details', 'selector'))
        end
      end
    end
  end

  def calculate_status
    SCORE_MAPPING.each do |range, status|
      if range.is_a?(Integer) && @score == range
        @status = status
        return
      elsif range.is_a?(Range) && range.include?(@score)
        @status = status
        return
      end
    end
  end
end
