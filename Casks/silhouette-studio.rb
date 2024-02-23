cask "silhouette-studio" do
  version "4.5.770"
  sha256 :no_check

  url "https://dl.silhcdn.com/fd99b8c8f315c04f",
      verified: "dl.silhcdn.com/"
  name "Silhouette Studio"
  desc "Create designs and send them to a Silhouette cutting machine"
  homepage "https://www.silhouetteamerica.com/software"

  app "Silhouette Studio.app"
end
