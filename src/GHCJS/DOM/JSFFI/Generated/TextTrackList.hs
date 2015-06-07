{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.TextTrackList
       (js_item, item, js_getTrackById, getTrackById, js_getLength,
        getLength, addTrack, change, removeTrack, TextTrackList,
        castToTextTrackList, gTypeTextTrackList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef TextTrackList -> Word -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.item Mozilla TextTrackList.item documentation> 
item :: (MonadIO m) => TextTrackList -> Word -> m (Maybe TextTrack)
item self index
  = liftIO ((js_item (unTextTrackList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        js_getTrackById ::
        JSRef TextTrackList -> JSString -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.getTrackById Mozilla TextTrackList.getTrackById documentation> 
getTrackById ::
             (MonadIO m, ToJSString id) =>
               TextTrackList -> id -> m (Maybe TextTrack)
getTrackById self id
  = liftIO
      ((js_getTrackById (unTextTrackList self) (toJSString id)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef TextTrackList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.length Mozilla TextTrackList.length documentation> 
getLength :: (MonadIO m) => TextTrackList -> m Word
getLength self = liftIO (js_getLength (unTextTrackList self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onaddtrack Mozilla TextTrackList.onaddtrack documentation> 
addTrack :: EventName TextTrackList Event
addTrack = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onchange Mozilla TextTrackList.onchange documentation> 
change :: EventName TextTrackList Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onremovetrack Mozilla TextTrackList.onremovetrack documentation> 
removeTrack :: EventName TextTrackList Event
removeTrack = unsafeEventName (toJSString "removetrack")