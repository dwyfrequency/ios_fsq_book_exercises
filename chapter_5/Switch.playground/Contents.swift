import UIKit

func getErrorCode(errorCode errCode: Int, _ errString: String = "The request failed with the error:") -> (Int, String){
    var errorString = errString
    switch errCode {
    case 100, 101:
        errorString += " Informational, \(statusCode)."
    case 204:
        errorString += " Successful but no content, 204."
    case 300...307:
        errorString += " Redirection, \(statusCode)."
    case 400...417:
        errorString += " Client error, \(statusCode)."
    case 500...505:
        errorString += " Server error, \(statusCode)."
    case let unknownCode where (unknownCode >= 200 && unknownCode < 300)
        || unknownCode > 505:
        errorString = "\(unknownCode) is not a known error code."
    default:
        errorString = "Unexpected error encountered."
    }
    return (errCode, errorString)
}

var statusCode: Int = 204
//var errorString: String = "The request failed with the error:"
getErrorCode(errorCode: statusCode)
let tup = getErrorCode(errorCode: 291)
print(tup)
