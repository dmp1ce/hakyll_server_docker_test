FROM haskell
MAINTAINER David Parrish <daveparrish@gmail.com>

# Get Hakyll installed
RUN cabal update && cabal install hakyll

# Initialize site
RUN hakyll-init new_site

# Build site
RUN cd new_site && ghc --make site.hs

# Run webserver when container is started
WORKDIR /new_site
CMD ./site server
