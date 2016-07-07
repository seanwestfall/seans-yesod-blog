module Handler.Post where

import Import
import Yesod.Form.Bootstrap3 (BootstrapFormLayout (..), renderBootstrap3,
                              withSmallInput)

getPostR :: Handler Html
getPostR = do
    defaultLayout $(widgetFile "posts/template_haskell")

