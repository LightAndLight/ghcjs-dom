{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.TrackEvent
       (js_getTrack, getTrack, TrackEvent, castToTrackEvent,
        gTypeTrackEvent)
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
 
foreign import javascript unsafe "$1[\"track\"]" js_getTrack ::
        JSRef TrackEvent -> IO (JSRef GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent.track Mozilla TrackEvent.track documentation> 
getTrack :: (MonadIO m) => TrackEvent -> m (Maybe GObject)
getTrack self
  = liftIO ((js_getTrack (unTrackEvent self)) >>= fromJSRef)