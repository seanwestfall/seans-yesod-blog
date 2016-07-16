{-# LANGUAGE OverloadedStrings #-}
module Handler.Post where

import Import
import Network.Wai           (pathInfo, rawPathInfo, requestMethod, responseLBS)
import Text.Blaze            (preEscapedText)

getPostR :: String -> Handler Html
getPostR title = do
    {-req <- waiRequest-}
    let temp = "templates/posts/" ++ title ++ ".html"
    snippet <- readFile temp
    defaultLayout [whamlet|#{preEscapedText snippet}|]

