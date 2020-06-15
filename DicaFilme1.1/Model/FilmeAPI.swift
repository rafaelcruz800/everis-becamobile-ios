//
//  FilmeAPI.swift
//  DicaFilme1.1
//
//  Created by Usuario Local on 6/11/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation
import Alamofire
import CoreData



class FilmeAPI: NSObject {


//// MARK: - GET

    func recuperaFilmes(sucesso:@escaping(_ Filmes:Array<Dictionary<String, Any>>) ->Void) -> Void {

    Alamofire.request("https://api.themoviedb.org/3/trending/all/week?api_key=2af7a036f996b226bc467aa4f716139b&language=pt-BR", method: .get).responseJSON { (URLResponse) in
        switch URLResponse.result {
        case .success:
            guard let resposta = URLResponse.result.value as? Dictionary<String, Any> else {return}
                guard let listaFilmes = resposta["results"] as? Array<Dictionary<String, Any>> else { return }
//                return listaFilmes
            sucesso(listaFilmes)
            
            
         
              break
        case .failure(_):
            print(URLResponse.result.value as Any)
            
        }
    
        }

        }
    }


