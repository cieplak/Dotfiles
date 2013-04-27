import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import XMonad.Hooks.SetWMName

main = do
    xmproc <- spawnPipe "xmobar"       
    xmonad $ defaultConfig 

        { manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , terminal = "xfce4-terminal" 
        , borderWidth = 2
        , startupHook = setWMName "LG3D"
        } 
        `additionalKeys`
        [ ((mod4Mask, xK_t), spawn "/home/pc/bin/toggle_touchpad.sh")
        ]

