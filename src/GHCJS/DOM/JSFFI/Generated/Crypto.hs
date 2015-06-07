{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Crypto
       (js_getRandomValues, getRandomValues, js_getWebkitSubtle,
        getWebkitSubtle, Crypto, castToCrypto, gTypeCrypto)
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
 
foreign import javascript unsafe "$1[\"getRandomValues\"]($2)"
        js_getRandomValues ::
        JSRef Crypto -> JSRef ArrayBufferView -> IO (JSRef ArrayBufferView)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValues ::
                (MonadIO m, IsArrayBufferView array) =>
                  Crypto -> Maybe array -> m (Maybe ArrayBufferView)
getRandomValues self array
  = liftIO
      ((js_getRandomValues (unCrypto self)
          (maybe jsNull (unArrayBufferView . toArrayBufferView) array))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"webkitSubtle\"]"
        js_getWebkitSubtle :: JSRef Crypto -> IO (JSRef SubtleCrypto)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.webkitSubtle Mozilla Crypto.webkitSubtle documentation> 
getWebkitSubtle :: (MonadIO m) => Crypto -> m (Maybe SubtleCrypto)
getWebkitSubtle self
  = liftIO ((js_getWebkitSubtle (unCrypto self)) >>= fromJSRef)