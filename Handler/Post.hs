{-# LANGUAGE OverloadedStrings #-}
module Handler.Post where

import Import
import Network.Wai           (pathInfo, rawPathInfo, requestMethod, responseLBS)
import Data.Text             (Text)
import Text.Blaze            (preEscapedText)
import qualified Data.Text.IO as T
import qualified Data.Text as S

getPostR :: Text -> Handler Html
getPostR title = do
    {-req <- waiRequest-}
    let temp = "templates/posts/" ++ (S.unpack title) ++ ".html"
    snippet <- liftIO $ T.readFile temp
    defaultLayout [whamlet|#{preEscapedText snippet}|]

