-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.RepositoryPrivacy exposing (RepositoryPrivacy(..), decoder, fromString, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| The privacy of a repository

  - Public - Public
  - Private - Private

-}
type RepositoryPrivacy
    = Public
    | Private


list : List RepositoryPrivacy
list =
    [ Public, Private ]


decoder : Decoder RepositoryPrivacy
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "PUBLIC" ->
                        Decode.succeed Public

                    "PRIVATE" ->
                        Decode.succeed Private

                    _ ->
                        Decode.fail ("Invalid RepositoryPrivacy type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : RepositoryPrivacy -> String
toString enum =
    case enum of
        Public ->
            "PUBLIC"

        Private ->
            "PRIVATE"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe RepositoryPrivacy
fromString enumString =
    case enumString of
        "PUBLIC" ->
            Just Public

        "PRIVATE" ->
            Just Private

        _ ->
            Nothing
