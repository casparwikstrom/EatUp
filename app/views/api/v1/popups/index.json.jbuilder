json.array! @popups do |popups|
  json.extract! popups, :id, :title, :url, :funding_goal, :amount_pledged
end
