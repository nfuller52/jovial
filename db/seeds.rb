# frozen_string_literal: true

Message.delete_all

subjects = [
  'You',
  'Your smile',
  'Your work',
  'Your efforts',
  'Your presence',
  'Your laughter',
  'Your dedication',
  'Your voice',
  'Your thoughts',
  'Your art',
  'Your spirit',
  'Your kindness',
  'Your creativity',
  'Your optimism',
  'Your knowledge'
]

verbs = [
  'brightens',
  'uplifts',
  'inspires',
  'encourages',
  'warms',
  'motivates',
  'cheers up',
  'enhances',
  'enriches',
  'touches',
  'soothes',
  'strengthens',
  'energizes',
  'rejuvenates',
  'sparkles'
]

complements = [
  "everyone's day",
  'those around you',
  'all of us',
  'like a ray of sunshine',
  'in so many ways',
  'with genuine love',
  'like no other',
  'in the most unexpected moments',
  "and it's truly magical",
  'bringing joy to man',
  "in ways words can't express",
  'making the world brighter',
  'like a breath of fresh air',
  "and it's a gift to us",
  'spreading positivity everywhere'
]

message_set = Set.new

while message_set.size < 500
  subject = subjects.sample
  verb = verbs.sample
  complement = complements.sample
  message_set.add("#{[subject, verb, complement].join(' ')}!")
end

message_set.each { |content| Message.create!(content:) }
