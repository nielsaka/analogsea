% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spaces_object_copy.R
\name{spaces_object_copy}
\alias{spaces_object_copy}
\title{Copy an Object from one Space to another}
\usage{
spaces_object_copy(from_object, to_object = from_object, from_space,
  to_space, spaces_key = NULL, spaces_secret = NULL, ...)
}
\arguments{
\item{from_object}{(character) The Object to copy}

\item{to_object}{(character) The key for the copied Object. Defaults to the same key as the Object being copied.}

\item{from_space}{(character) The Space the Object being copied is found in}

\item{to_space}{(character) The Space to copy the Object to}

\item{spaces_key}{(character) String containing a spaces access key. If
missing, defaults to value stored in an environment variable
\code{DO_SPACES_ACCESS_KEY}.}

\item{spaces_secret}{(character) String containing the secret associated
with the spaces key. If missing, defaults to value stored in an environment
variable \code{DO_SPACES_SECRET_KEY}.}

\item{...}{Additional argument passed to \code{\link[aws.s3]{copy_object}}}
}
\value{
If successful, information about the copied Object
}
\description{
Copy an Object from one Space to another
}
\examples{
\dontrun{
# First, create two Spaces and an Object in the first space
space_create("primary-space")
space_create("secondary-space")
spaces_object_put("some-file.txt", space = "primary-space")

# You can then copy the object from one space to another
spaces_object_copy("my-object", "copied-object", "primary_space", "secondary-space")

# And you can also copy over the Object with the same key
spaces_object_copy("my-object",
                   from_space = "primary-space",
                   to_space = "secondary-space")
}
}
\references{
\url{https://developers.digitalocean.com/documentation/
spaces/#copy-object}
}
