//
//  ViewController.swift
//  DicaFilme1.1
//
//  Created by Usuario Local on 6/11/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController, UICollectionViewDataSource {

    
    
    @IBOutlet weak var colecaoFilmes: UICollectionView!

    var listaDeFilme: Array<Filme> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colecaoFilmes.dataSource = self
        getFilme()
//        FilmeAPI().recuperaFilmes()
        
    }
    
    func getFilme() {
        FilmeAPI().recuperaFilmes { (resposta) in
            guard let jsonData = Filme.converteListaParaData(resposta) else { return }
            guard let listaDeFilme = Filme.decodificaFilme(jsonData) else { return }
            
            self.listaDeFilme = listaDeFilme
            self.colecaoFilmes.reloadData()
        }
        
        
        
        

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return listaDeFilme.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaFilme = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionView", for: indexPath) as! UICollecCollectionViewCell
        let filme = listaDeFilme[indexPath.item]
        
        celulaFilme.atribuiValor(path: filme.posterPath)
//        let filme = listaDeFilme[indexPath.item]
//        if let titulo = filme.name {
//            celulaFilme.atribuiValor(titulo: titulo)
//        }
//        if let titulo = filme.title {
//            celulaFilme.atribuiValor(titulo: titulo)
//        }
        
        
        return celulaFilme
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath ){
        let filme = listaDeFilme[indexPath.item]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "detalhes") as! DetalhesViewController
        controller.filme = filme
        self.present(controller, animated: true,completion: nil)

    }
}







