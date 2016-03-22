json.array!(@packages) do |package|
  json.extract! package, :id, :date, :place, :track, :details
  json.url package_url(package, format: :json)
end
