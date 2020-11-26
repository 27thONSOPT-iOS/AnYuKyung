//
//  NetworkResult.swift
//  Week6_homework
//
//  Created by kong on 2020/11/27.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
