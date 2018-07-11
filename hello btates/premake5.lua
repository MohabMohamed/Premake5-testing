workspace ("Btates")
    configurations ({"Debug","Release"})

project ("HelloBtates")
    language ("C")
    kind ("ConsoleApp") 
    targetdir ("bin/%{cfg.buildcfg}")

files ({"**.h","**.c"})

filter ("configurations:Debug")
    defines ({ "DEBUG" })
    symbols ("On")

filter ("configurations:Release")
    defines ({ "NDEBUG" })
    optimize ("On")
