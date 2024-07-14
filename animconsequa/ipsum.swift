import Foundation
import CommonCrypto

struct Path {
    let url: URL
    
    init(_ path: String) {
        self.url = URL(fileURLWithPath: path)
    }
}

extension Path {
    func md5() -> String? {
        guard let fileData = try? Data(contentsOf: url) else {
            return nil
        }

        var digest = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
        
        fileData.withUnsafeBytes {
            _ = CC_MD5($0.baseAddress, CC_LONG(fileData.count), &digest)
        }
        
        return digest.map { String(format: "%02x", $0) }.joined()
    }
}

// Usage example:
let filePath = Path("/path/to/your/file")
if let hash = filePath.md5() {
    print("MD5 hash: \(hash)")
} else {
    print("Failed to compute MD5 hash.")
}
