module Main where

import Prelude

import Control.Monad.ST (ST, newSTRef, readSTRef, modifySTRef)
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe(..))
import Graphics.Canvas (CANVAS, rect, fillPath, setFillStyle, getContext2D,
                        getCanvasElementById, translate, rotate, lineTo, moveTo, closePath)
import Partial.Unsafe (unsafePartial)

-- import Data.List.ThreeOrMore (ThreeOrMore, last, reverse, toList)
-- import Data.Foldable (foldMap, sum)
-- import Data.Int (toNumber)
-- import Data.List (List(..), singleton, (:), (..), sortBy, zipWith)
-- import Data.Monoid (class Monoid, mempty)
-- import Data.NonEmpty ((:|))

import Math (pi, asin, sqrt, sin, cos)

import Graphics.Drawing as TwoD
import Color (Color, lighten)
import Color (Color) as ColorType

import Graphics.Isometric(rotateX)
-- import Graphics.Isometric.Point (vector, dot, normalize, cross, depth, from2D)
-- import Graphics.Isometric.Point as P
-- import Graphics.Isometric.Types (Angle, Point, Vector)
import MyMod
--m=100.0
n=25.0
main :: Eff (canvas :: CANVAS) Unit
main = void $ unsafePartial do
  Just canvas <- getCanvasElementById "canvas1"
  ctx <- getContext2D canvas

--front
  _ <-setFillStyle "#FFF600" ctx
  _ <-fillPath ctx $ do
    _ <-moveTo ctx (rotate1 (angle n)) (rotate2 (angle n))
    _ <-lineTo ctx (rotate5 (angle n)) (rotate4 (angle n))
    _ <-lineTo ctx (rotate3 (angle n)) (rotate6 (angle n))
    _ <-lineTo ctx (rotate7 (angle n)) (rotate8 (angle n))
    closePath ctx


--back
  _ <-setFillStyle "#00FF19" ctx
  _ <-fillPath ctx $ do
    _ <-moveTo ctx (rotate1 (angle n)+35.0) ((rotate2 (angle n))+35.0)
    _ <-lineTo ctx (rotate5 (angle n)+35.0) ((rotate6 (angle n))+35.0)
    _ <-lineTo ctx (rotate3 (angle n)+35.0) ((rotate4 (angle n))+35.0)
    _ <-lineTo ctx (rotate7 (angle n)+35.0) ((rotate8 (angle n))+35.0)
    closePath ctx

--side1
  _ <-setFillStyle "#00FFF6" ctx
  _ <-fillPath ctx $ do
    _ <-moveTo ctx (rotate1 (angle n)) (rotate2 (angle n))
    _ <-lineTo ctx (rotate1 (angle n)+35.0) ((rotate2 (angle n))+35.0)
    _ <-lineTo ctx (rotate5 (angle n)+35.0) ((rotate6 (angle n))+35.0)
    _ <-lineTo ctx (rotate5 (angle n)) (rotate6 (angle n))
    closePath ctx

--side2
  _ <-setFillStyle "#FF0019" ctx
  _ <-fillPath ctx $ do
    _ <-moveTo ctx (rotate1 (angle n)) (rotate2 (angle n))
    _ <-lineTo ctx (rotate1 (angle n)+35.0) ((rotate2 (angle n))+35.0)
    _ <-lineTo ctx (rotate7 (angle n)+35.0) ((rotate8 (angle n))+35.0)
    _ <-lineTo ctx (rotate7 (angle n)) (rotate8 (angle n))
    closePath ctx

--side3
  _ <-setFillStyle "#1900FF" ctx
  _ <-fillPath ctx $ do
    _ <-moveTo ctx (rotate7 (angle n)) (rotate8 (angle n))
    _ <-lineTo ctx (rotate7 (angle n)+35.0) ((rotate8 (angle n))+35.0)
    _ <-lineTo ctx (rotate3 (angle n)+35.0) ((rotate4 (angle n))+35.0)
    _ <-lineTo ctx (rotate3 (angle n)) ((rotate4 (angle n)))
    closePath ctx

--side4
  _ <-setFillStyle "#000000" ctx
  _ <-fillPath ctx $ do
    _ <-moveTo ctx (rotate3 (angle n)) (rotate4 (angle n))
    _ <-lineTo ctx (rotate3 (angle n)+35.0) (rotate4 (angle n)+35.0)
    _ <-lineTo ctx (rotate5 (angle n)+35.0) (rotate6 (angle n)+35.0)
    _ <-lineTo ctx (rotate5 (angle n)) (rotate6 (angle n))
    closePath ctx


    ------------------------------------------------------------------------------------------------------------------
  -- _ <-setFillStyle "#644452" ctx
  --   _ <-fillPath ctx $ do
  --   _ <-moveTo ctx (x1) (y1)
  --   _ <-lineTo ctx (x1+50.0) (y1+50.0)
  --   _ <-lineTo ctx (x1+50.0) (y2+50.0)
  --   _ <-lineTo ctx (x1) (y2)
  --   closePath ctx


  -- _<-translate { translateX: 100.0, translateY: 100.0 } ctx
  -- -- _<-rotate (13.5 / 2.0) ctx
  -- _ <-setFillStyle "#123456" ctx
    --
  fillPath ctx $ rect ctx
    { x: 150.0
    , y: 150.0
    , w: 0.0
    , h: 0.0
    }
