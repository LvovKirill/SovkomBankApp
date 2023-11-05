//
//  TaskMapView.swift
//  SovkomBank
//
//  Created by Kirill on 29.10.2023.
//

import SwiftUI
import MapKit

struct TaskMapView: View {
    
    var taskMapViewModel = TaskMapViewModel()
    
    @State var currentTab: String = "my"
    var body: some View {
            
            ZStack(alignment: .topTrailing){
                MapView()
                    .edgesIgnoringSafeArea(.top)
                ZStack{
                    Color.white
                    Picker("", selection: $currentTab){
                        Text("мои")
                            .tag("my")
                        Text("текущие")
                            .tag("current")
                        Text("все")
                            .tag("all")
                    }
                    .pickerStyle(.menu)
                }
                .frame(width: 120, height: 30)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                .padding(.horizontal, 20.0)
                .foregroundColor(Color.white)
            }
            
        }
    }


struct MapView: UIViewRepresentable{
    
    @State var shouldPresentSheet = false
    
    var taskMapViewModel = TaskMapViewModel()
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        
        for annotation in taskMapViewModel.getAnnotation(){
            mapView.addAnnotation(annotation)
        
        }
        
        return mapView
    }
    
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate{
        var taskMapViewModel = TaskMapViewModel()
        var parent: MapView
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            return taskMapViewModel.drawMarker(annotation: annotation)
        }
        
        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            parent.shouldPresentSheet.toggle()
        }
    
    
        init(parent: MapView) {
            self.parent = parent
        }
    }
}



struct TaskMapView_Previews: PreviewProvider {
    static var previews: some View {
        TaskMapView()
    }
}

