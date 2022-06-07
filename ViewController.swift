//
//  ViewController.swift
//  functions
//
//  Created by Kullanici on 8.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // fonksiyon cagırma işlemi
        yasortalamasihesapla()
        
        //parametre alan fonksiyon çağırma
        yasortalamasihesapla(yas1: 21, yas2: 24)
        
        //geriye değer döndüren metod
        let result = yasortalamsihesapla(number1: 23, number2: 24)
        print(result)
        //external parametrealan method
        hesapla(hesaplamaislemi: "topla", birincisayi: 3, ikincisayi: 4)
        hesapla(hesaplamaislemi: "çarpım", birincisayi: 4, ikincisayi: 23)
        hesapla(hesaplamaislemi: "ortalama", birincisayi: 13, ikincisayi: 16)
        hesapla(hesaplamaislemi: "cıkarma", birincisayi: 3, ikincisayi: 2)
    }
// parametre almayan fonksiyon tanımlama
    func  yasortalamasihesapla(){
    let yas1 = 20
    let yas2 = 24
    
        let ort = (yas1 + yas2)/2
        print("iki yaşın ortalaması = \(ort)")
    }
    //parametre alan functionlar
    func yasortalamasihesapla(yas1 :Int,yas2:Int){
        let ort = (yas1 + yas2)/2
        print("iki yasın ortalaması=\(ort)")
    }
 // geriye değer donduren fonksiyonlar
    func yasortalamsihesapla(number1:Double,number2:Double) -> Double {
        let ort=(number1+number2)/2
        return ort
    }
    // external parametre alan fonksiyon kullanımı
    func hesapla(hesaplamaislemi islem:String,birincisayi sayi1:Int, ikincisayi sayi2:Int){
        switch islem {
        case "topla":
            print("toplamı=\((sayi1+sayi2))")
        case "çarpım":
            print("çarpımı=\((sayi1*sayi2))")
        case "ortalama":
            print("ortalaması=\((sayi1+sayi2)/2)")
        default:
            print("gecersiz islem")
        }
    }
    
}

