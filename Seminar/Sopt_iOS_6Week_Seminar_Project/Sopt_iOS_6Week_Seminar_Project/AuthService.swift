//
//  AuthService.swift
//  Sopt_iOS_6Week_Seminar_Project
//
//  Created by 김민희 on 2020/11/21.
//

import Foundation
import Alamofire

struct AuthService {
    static let shared = AuthService()
    
    func signIn(email: String, password: String, completion: @escaping (NetworkResult<Any>) -> ()) {
        
        let url = APIConstants.usersSignInURL
        
        let header: HTTPHeaders = ["Content-Type":"application/json"]
        
        let body: Parameters = ["email": email, "password":password]
        
        let dataRequest = AF.request(url, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header)
        
        dataRequest.responseData { (response) in
            
            switch response.result {
            case .success :
                guard let statusCode = response.response?.statusCode else {
                    return
                }
                guard let data = response.value else {
                    return
                }
                completion(judgeSingInData(status: statusCode, data: data))
                
            case .failure(let err):
                print(err)
                completion(.networkFail)
            }
        }
    }
    
    private func judgeSingInData(status: Int, data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try?decoder.decode(GenericResponse<SignInData>.self, from: data) else {
            return .pathErr
        }
        switch status{
        case 200:
            return .success(decodedData.data)
        case 400:
            //통신은 올바르게 됐지만 요청값에 대한 에러
            return .requestErr(decodedData.message)
        case 500:
            // 서버 자체 오류
            return .serverErr
        default:
            return .pathErr
        }
        
    }
}
