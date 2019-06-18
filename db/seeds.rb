ArtistArtwork.destroy_all
Artist.destroy_all
Artwork.destroy_all
puts "----------- Seed Artists ---------------"
json_artists = JSON.parse(File.read("#{Rails.root}/db/Artists.json"))
json_artists.each do |json_artist|
  Artist.create!({
    constituent_id: json_artist["ConstituentID"],
    display_name: json_artist["DisplayName"],
    bio: json_artist["ArtistBio"],
    nationality: json_artist["Nationality"],
    gender: json_artist["Gender"],
    begin_date: json_artist["BeginDate"],
    end_date: json_artist["EndDate"],
    wiki: json_artist["Wiki QID"],
    ulan: json_artist["ULAN"]
  })
end
puts "----------- Seed Artists Done ---------------"
puts "----------- Seed Artworks ---------------"
json_artworks = JSON.parse(File.read("#{Rails.root}/db/Artworks.json"))
json_artworks[0..40000].each do |json_artwork|
  artwork = Artwork.create!({
    title: json_artwork["Title"],
    date: json_artwork["Date"],
    medium: json_artwork["Medium"],
    credit_line: json_artwork["CreditLine"],
    classification: json_artwork["Classification"],
    department: json_artwork["Department"],
    thumbnail_url: json_artwork["ThumbnailURL"],
    height: json_artwork["Height (cm)"],
    width: json_artwork["Width (cm)"]
  })
  json_artwork["ConstituentID"].each { |constituent_id| ArtistArtwork.create!(artist: Artist.find_by(constituent_id: constituent_id), artwork: artwork) }
end
puts "----------- Seed Artworks Done ---------------"
