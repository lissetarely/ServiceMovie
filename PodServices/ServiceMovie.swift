//
//  ServiceMovie.swift
//  PodServices
//
//  Created by Liss SM on 28/11/21.
//

import Foundation

class ServiceMovie {
    
    var listFavoriteMovies: MoviesUrl?
    var listRecommended : MoviesUrl?
    var listRated: MoviesUrl?
    
    func externalGetData() {
        self.getService1()
    }
    
    func getService1() {
        let session = URLSession.shared
        var request = URLRequest(url: URL(string: "https://api.themoviedb.org/3/list/15570?api_key=c07d7dea322ca5374adcb3f802a55a5b&language=en-US")!)
        request.httpMethod = "GET"
        
        request.setValue("application/json; charset=utf8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/x-www-form-urlencoded; charset=utf8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("no-cache", forHTTPHeaderField: "cache-control")

        
        
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            print(response!)
            
            guard let data = data, error == nil, let respuesta = response  as? HTTPURLResponse else{
                print("Error de conexion ")
                return
            }
            
            if respuesta.statusCode == 200{
                print("Respuesta \(data)")
                do {
                    let decoder = JSONDecoder()
                    self.listFavoriteMovies = try decoder.decode(MoviesUrl.self, from: data)
                    self.getService2()
                } catch {
                    print("error \(error.localizedDescription)")
                }
            }else{
                print(" error  \(respuesta.statusCode)")
            }
        })

        task.resume()
    }
    
    func getService2(){
        let session = URLSession.shared
        var request = URLRequest(url: URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=c07d7dea322ca5374adcb3f802a55a5b")!)
        request.httpMethod = "GET"
        
        request.setValue("application/json; charset=utf8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/x-www-form-urlencoded; charset=utf8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("no-cache", forHTTPHeaderField: "cache-control")

        
        
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            print(response!)
            
            guard let data = data, error == nil, let respuesta = response  as? HTTPURLResponse else{
                print("Error de conexion ")
                return
            }
            
            if respuesta.statusCode == 200{
                
                print("Respuesta \(data)")
                self.getService3()
                
                do {
                    
                    let decoder = JSONDecoder()
                    self.listRecommended = try decoder.decode(MoviesUrl.self, from: data)
                    self.getService3()
                    
                } catch {
                    print("error \(error.localizedDescription)")
                }
            }else{
                print(" error  \(respuesta.statusCode)")
            }
        })

        task.resume()
    }
    
    func getService3(){
        let session = URLSession.shared
        var request = URLRequest(url: URL(string: "https://api.themoviedb.org/3/movie/top_rated?api_key=c07d7dea322ca5374adcb3f802a55a5b")!)
        request.httpMethod = "GET"
        
        request.setValue("application/json; charset=utf8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/x-www-form-urlencoded; charset=utf8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("no-cache", forHTTPHeaderField: "cache-control")

        
        
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            print(response!)
            
            guard let data = data, error == nil, let respuesta = response  as? HTTPURLResponse else{
                print("Error de conexion ")
                return
            }
            
            if respuesta.statusCode == 200{
                
                print("Respuesta \(data)")
                
                do {
                    
                    let decoder = JSONDecoder()
                    self.listRated = try decoder.decode(MoviesUrl.self, from: data)
                    print("Ya consumio los 3 servicios")
                    guard let fav = self.listFavoriteMovies, let rec = self.listRecommended, let rat = self.listRated else {return}
//                    self.remoteRequestHandler?.callBackData(Rated: rat, Recomendaciones: rec, Favoritas: fav)
                    return
                    
                } catch {
                    print("error \(error.localizedDescription)")
                }
            }else{
                print(" error  \(respuesta.statusCode)")
            }
        })

        task.resume()
    }
}


