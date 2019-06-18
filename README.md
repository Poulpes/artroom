# The Artroom

## Intro

This repo contains an extract of the [MoMA Database](https://github.com/MuseumofModernArt/collection) packaged in a Rails 5.2 App. 2 main models are defined: `Artist` and `Artwork`. As an artwork can be the work of several artists and a given artist may have produced several artworks, an additionnal jointure table is defined `ArtistArtwork`.

**The goal of the exercise is to implement a search feature**: From the home page, the user should be able to search for an artwork, find it and navigate to the detailed page of the artwork. Specificaly:

- instant results are displayed when the user type his query (autocomplete style)
- the user should be able to search by artworks name or artist name

## Getting started

To get started:

- Clone the repo
- `$ bundle install` and `$ yarn`
- `$ rails db:create db:migrate db:seed` _Te seed process might take a while_
- `$ rails s` and `$ webpack-dev-server`

