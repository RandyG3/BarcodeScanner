//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Randy on 12/31/23.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
     
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
       Coordinator()
   }
    
    final class Coordinator: NSObject, ScannerVCDelegate {
    func didFind(barcode: String) {
        print(barcode)
    }
    
    func didSurface(error: CameraError) {
        print(error.rawValue)
        }
    }
}

#Preview {
    ScannerView()
}
