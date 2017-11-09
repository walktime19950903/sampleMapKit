//
//  ViewController.swift
//  sampleMapKit
//
//  Created by ryousuke on 2017/11/08.
//  Copyright © 2017年 ryousuke Takahashi. All rights reserved.
//

import UIKit
import MapKit //地図用のフレームワーク読み込み

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //アヤラを中心とした地図を表示
        
        // １.中心んとなる場所のオブジェクトを作成
        let coodinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
    
        //　2.縮尺を設定
        let span = MKCoordinateSpanMake(0.05, 0.05)
        
        //3. 範囲オブジェクトを作成
        let region = MKCoordinateRegionMake(coodinate, span)
        
        //4. MapViewに範囲オブジェクトを設定
        mapView.setRegion(region, animated: true)
        
    //アヤラ（中心）にピンを立てる
        
        //1.pinオブジェクトを生成
        let centerPin = MKPointAnnotation()
        
        //2.pinの座標を設定
        //これでも大丈夫
//        centerPin.coordinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        centerPin.coordinate = coodinate
        
        //3.タイトル、サブタイトルを設定（タップしたときに出る吹き出しの情報）
        centerPin.title = "アヤラショッピングモール"
        centerPin.subtitle = "なんでもあるよ"
        
        //4.mapViewのpinを追加
        mapView.addAnnotation(centerPin)
        
        //TODO:ピンをもう一つ立ててみましょう
        
        let smPin = MKPointAnnotation()
        
        smPin.coordinate = CLLocationCoordinate2DMake(10.311987, 123.918199)
        
        smPin.title = "SM mall"
        smPin.subtitle = "でかいでっせ"
        
        mapView.addAnnotation(smPin)
        
        let barikata = MKPointAnnotation()
        
     
        barikata.coordinate = CLLocationCoordinate2DMake(10.328697, 123.905193)
        
        
        barikata.title = "BARIKATA"
        barikata.subtitle = "ラーメンうまめ"
        
        mapView.addAnnotation(barikata)

        let tibori  = MKPointAnnotation()
        
        
        tibori.coordinate = CLLocationCoordinate2DMake(10.331294, 123.90843)
        
        
        tibori.title = "知暮里"
        tibori.subtitle = "間違いない"
        
        mapView.addAnnotation(tibori)
        
        let echizennya = MKPointAnnotation()
        
        echizennya.coordinate = CLLocationCoordinate2DMake(10.315699, 123.885437)
        
        echizennya.title = "筑前屋"
        echizennya.subtitle = "結局もつ鍋"
        
        mapView.addAnnotation(echizennya)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

