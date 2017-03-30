module Handler.Posts where

import Import
import Yesod.Form.Bootstrap3 (BootstrapFormLayout (..), renderBootstrap3,
                              withSmallInput)

getPostsR :: Handler Html
getPostsR = do
    defaultLayout $(widgetFile "posts")
