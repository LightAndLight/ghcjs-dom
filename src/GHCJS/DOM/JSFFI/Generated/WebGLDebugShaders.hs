{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebGLDebugShaders
       (js_getTranslatedShaderSource, getTranslatedShaderSource,
        WebGLDebugShaders, castToWebGLDebugShaders, gTypeWebGLDebugShaders)
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
 
foreign import javascript unsafe
        "$1[\"getTranslatedShaderSource\"]($2)"
        js_getTranslatedShaderSource ::
        JSRef WebGLDebugShaders -> JSRef WebGLShader -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders.getTranslatedShaderSource Mozilla WebGLDebugShaders.getTranslatedShaderSource documentation> 
getTranslatedShaderSource ::
                          (MonadIO m, FromJSString result) =>
                            WebGLDebugShaders -> Maybe WebGLShader -> m result
getTranslatedShaderSource self shader
  = liftIO
      (fromJSString <$>
         (js_getTranslatedShaderSource (unWebGLDebugShaders self)
            (maybe jsNull pToJSRef shader)))