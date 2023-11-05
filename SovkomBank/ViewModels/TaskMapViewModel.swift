//
//  TaskMapViewModel.swift
//  SovkomBank
//
//  Created by Kirill on 30.10.2023.
//

import Foundation
import MapKit

class TaskMapViewModel{
    var taskFactory = TaskFactory()
    
    func getAnnotation() -> [MKPointAnnotation]{
        var coordinates: [MKPointAnnotation] = []
        for task in taskFactory.taskData{
            let annotation = MKPointAnnotation()
            annotation.title = task.taskName
            annotation.coordinate = CLLocationCoordinate2DMake(task.latitude, task.longitude)
            coordinates.append(annotation)
        }
        return coordinates
    }
    
    func drawMarker(annotation: MKAnnotation) -> MKAnnotationView{
        
        let view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: nil)
        view.canShowCallout = true
        
        switch(annotation.title){
        case "Доставка карты" :
            view.image = UIImage(named: "pin1")
            view.accessibilityIgnoresInvertColors = true
//            view.glyphImage
            view.canShowCallout = true

        case "Анкетирование" :
            view.markerTintColor = UIColor.green
            view.glyphImage = UIImage(systemName: "list.clipboard")
        case .none:
            break
        case .some(_):
            break
        }
        
        return view
        
    }
    
    
}
