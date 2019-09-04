
#hunter_config(ZLIB VERSION 1.2.8-p3
#    CMAKE_ARGS 
#        ANDROID_STL=${ANDROID_STL}
#        ANDROID_ABI=${ANDROID_ABI}
#        ANDROID_PLATFORM=${ANDROID_PLATFORM}
#        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
#    )
    
hunter_config(date VERSION 2.4.1
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
)

hunter_config(Boost VERSION 1.70.0-p0
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
)
hunter_config(OpenSSL VERSION 1.1.0j
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
)
hunter_config(Sqlpp11 
    URL https://github.com/hunter-packages/sqlpp11/archive/v0.57-p0.tar.gz
    SHA1 472f23489f9a063d2b9a492910ea59a36bc55263

    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
)

hunter_config(MySQL-client VERSION 6.1.9-p1
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
)

hunter_config(Catch2
    URL https://github.com/catchorg/Catch2/archive/v2.7.1.tar.gz
    SHA1 45b3f4ad38f3a5cace6edabd42099de740185237
    CMAKE_ARGS
        CATCH_BUILD_TESTING=OFF
        CATCH_ENABLE_WERROR=OFF
        CATCH_INSTALL_DOCS=OFF
        CATCH_INSTALL_HELPERS=ON
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
)

hunter_config(sqlcipher
    URL https://github.com/edwardbr/sqlcipher/archive/hunter-3.27.2.tar.gz
    SHA1 7c2957823c6e1c16bbe61d08a8b305f00542b66c
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
    )

hunter_config(sqlpp11-connector-mysql
    URL https://github.com/edwardbr/sqlpp11-connector-mysql/archive/master.tar.gz
    SHA1 b458ecc6148384810c0cd6e8f0184acdafb0d877
    CMAKE_ARGS
        ENABLE_TESTS=Off
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
    )
    

hunter_config(sqlpp11-connector-sqlite3
    URL https://github.com/edwardbr/sqlpp11-connector-sqlite3/archive/master.tar.gz
    SHA1 6d408b7cf2dbe60dafa98948a43132d1c65b98ac
    CMAKE_ARGS
        SQLCIPHER=On
        ENABLE_TESTS=Off
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
        )
        

hunter_config(libsodium VERSION 1.0.16-p0
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
)
hunter_config(flatbuffers VERSION 1.8.0-p1
    CMAKE_ARGS 
        FLATBUFFERS_BUILD_TESTS=OFF
        FLATBUFFERS_BUILD_FLATC=ON
        FLATBUFFERS_BUILD_FLATHASH=ON
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
        )

hunter_config(nlohmann_json VERSION 3.6.1
CMAKE_ARGS 
    ANDROID_STL=${ANDROID_STL}
    ANDROID_ABI=${ANDROID_ABI}
    ANDROID_PLATFORM=${ANDROID_PLATFORM}
    CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
    )


hunter_config(nlohmann_fifo_map VERSION 0.0.0-0dfbf5d-p1
CMAKE_ARGS 
    ANDROID_STL=${ANDROID_STL}
    ANDROID_ABI=${ANDROID_ABI}
    ANDROID_PLATFORM=${ANDROID_PLATFORM}
    CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
    )
    

hunter_config(fmt VERSION 5.2.1
CMAKE_ARGS 
    ANDROID_STL=${ANDROID_STL}
    ANDROID_ABI=${ANDROID_ABI}
    ANDROID_PLATFORM=${ANDROID_PLATFORM}
    CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
    )


hunter_config(cxxopts VERSION 2.1.1-pre
CMAKE_ARGS 
    ANDROID_STL=${ANDROID_STL}
    ANDROID_ABI=${ANDROID_ABI}
    ANDROID_PLATFORM=${ANDROID_PLATFORM}
    CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
    )


hunter_config(secp256k1
    URL https://github.com/edwardbr/secp256k1/archive/master.tar.gz
    SHA1 7229336a56a3d0171cc6c6055bf4f0635435e0cb
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
        )

hunter_config(libbitcoin-system
    URL https://github.com/edwardbr/libbitcoin-system/archive/master.tar.gz
    SHA1 97cc83fe3a574f59bd5051a8262b2c266ffa9e18
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
        with-icu=NO
        )

hunter_config(libbitcoin-network
    URL https://github.com/edwardbr/libbitcoin-network/archive/master.tar.gz
    SHA1 6fb03a39132d94bed5f15ce73f87f610bab0b1a6
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
        with-icu=NO
        )        

hunter_config(libbitcoin-protocol
    URL https://github.com/edwardbr/libbitcoin-protocol/archive/master.tar.gz
    SHA1 72438ec06c214a4a58fd31dda5e95bfeca03a89f
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
        with-icu=NO
        )

hunter_config(libbitcoin-client
    URL https://github.com/edwardbr/libbitcoin-client/archive/master.tar.gz
    SHA1 ed89f89c1faf631af10ce2fdb2571434a18ace1e
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
        with-icu=NO
        )


hunter_config(ICU VERSION 63.1-p5
    CMAKE_ARGS 
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
    )

hunter_config(OpenCV VERSION 3.4.1-p1
    CMAKE_ARGS 
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
    )

hunter_config(bigint
    URL https://github.com/edwardbr/bigint/archive/master.tar.gz
    SHA1 7b7af0a373c42bc3a0537e7af673892af31bec12
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
        QT_CMAKE=${QT_CMAKE}
        )

hunter_config(zxing
    URL https://github.com/edwardbr/zxing/archive/master.tar.gz
    SHA1 f343bb34b00e723eb28a4b8d115b5b646a7ae449
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
        QT_CMAKE=${QT_CMAKE}
        )

hunter_config(qzxing
    URL https://github.com/edwardbr/qzxing/archive/master.tar.gz
    SHA1 7036c86df0ee0b3af12d849f7ea4297666d2d995
    CMAKE_ARGS
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
        QT_CMAKE=${QT_CMAKE}
        )

hunter_config(Qt VERSION 5.12.3
    CMAKE_ARGS 
        ANDROID_STL=${ANDROID_STL}
        ANDROID_ABI=${ANDROID_ABI}
        ANDROID_PLATFORM=${ANDROID_PLATFORM}
        CMAKE_ANDROID_ARCH=${CMAKE_ANDROID_ARCH}
    )
