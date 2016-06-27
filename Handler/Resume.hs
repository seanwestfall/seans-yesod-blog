module Handler.Resume where

import Import

getResumeR :: Handler Html
getResumeR = do
    defaultLayout $(widgetFile "resume")

