//
//  Data.swift
//  
//
//  Created by 韦烽传 on 2021/5/8.
//

import Foundation
import CommonCrypto

// MARK: - Data SHA

extension Data {
    
    func sha1() -> Data {
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA1_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA1($0.baseAddress, CC_LONG(count), &digest)
        }
        return Data(digest)
    }

    func sha224() -> Data {
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA224_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA224($0.baseAddress, CC_LONG(count), &digest)
        }
        return Data(digest)
    }

    func sha256() -> Data {
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA256_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA256($0.baseAddress, CC_LONG(count), &digest)
        }
        return Data(digest)
    }

    func sha384() -> Data {
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA384_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA384($0.baseAddress, CC_LONG(count), &digest)
        }
        return Data(digest)
    }

    func sha512() -> Data {
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA512_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA512($0.baseAddress, CC_LONG(count), &digest)
        }
        return Data(digest)
    }
}
