////
////  FilmeDAO.swift
////  DicaFilme1.1
////
////  Created by Usuario Local on 6/11/20.
////  Copyright © 2020 Everis. All rights reserved.
////
//
//import UIKit
//import CoreData
//
//class FilmeDAO: NSObject {
//    
//    var gerenciadorDeResultados:NSFetchedResultsController<Filme>?
//    var contexto:NSManagedObjectContext {
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        return appDelegate.persistentContainer.viewContext
//    }
//    
//    func recuperaFilmes() -> Array<Filme> {
//        let pesquisaFilme:NSFetchRequest<Filme> = Filme.fetchRequest()
//        let ordenaid = NSSortDescriptor(key: "id", ascending: true)
//        pesquisaFilme.sortDescriptors = [ordenaid]
//        
//        gerenciadorDeResultados = NSFetchedResultsController(fetchRequest: pesquisaFilme, managedObjectContext: contexto, sectionNameKeyPath: nil, cacheName: nil)
//        
//        do {
//            try gerenciadorDeResultados?.performFetch()
//        } catch {
//            print(error.localizedDescription)
//        }
//        
//        guard let listaDeFilme = gerenciadorDeResultados?.fetchedObjects else { return [] }
//        
//        return listaDeFilme
//    }
