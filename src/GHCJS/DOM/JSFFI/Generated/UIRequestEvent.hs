{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.UIRequestEvent
       (js_getReceiver, getReceiver, UIRequestEvent, castToUIRequestEvent,
        gTypeUIRequestEvent)
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
 
foreign import javascript unsafe "$1[\"receiver\"]" js_getReceiver
        :: JSRef UIRequestEvent -> IO (JSRef EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIRequestEvent.receiver Mozilla UIRequestEvent.receiver documentation> 
getReceiver ::
            (MonadIO m) => UIRequestEvent -> m (Maybe EventTarget)
getReceiver self
  = liftIO ((js_getReceiver (unUIRequestEvent self)) >>= fromJSRef)