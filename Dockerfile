FROM haskell
MAINTAINER David Parrish <daveparrish@gmail.com>

# Get Hakyll installed
RUN cabal update && cabal install hakyll

# Create site
RUN hakyll-init new_site

# Build site
RUN cd new_site && ghc --make site.hs

# Run webserver
WORKDIR /new_site
CMD ./site server
