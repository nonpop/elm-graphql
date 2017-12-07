module Api.Object.RepositoryCollaboratorConnection exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.RepositoryCollaboratorConnection
build constructor =
    Object.object constructor


edges : Object edges Api.Object.RepositoryCollaboratorEdge -> FieldDecoder (List edges) Api.Object.RepositoryCollaboratorConnection
edges object =
    Object.listOf "edges" [] object


nodes : Object nodes Api.Object.User -> FieldDecoder (List nodes) Api.Object.RepositoryCollaboratorConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : Object pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.RepositoryCollaboratorConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.RepositoryCollaboratorConnection
totalCount =
    Field.fieldDecoder "totalCount" [] Decode.int