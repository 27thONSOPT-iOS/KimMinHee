//
//  NetworkResult.swift
//  Sopt_iOS_6Week_Seminar_Project
//
//  Created by 김민희 on 2020/11/21.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
// 서버 통신에 대한 결과(성공, 요청에러, 경로에러, 서버내부에러, 네트워크 연결 실패)
