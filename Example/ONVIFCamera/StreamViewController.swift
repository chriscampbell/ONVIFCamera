//
//  StreamViewController.swift
//  StreamTutorial
//
//  Created by Rémy Virin on 15/01/2018.
//  Copyright © 2018 RemyVirin. All rights reserved.
//

import UIKit

class StreamViewController: UIViewController {
    
    var URI: String?
    @IBOutlet weak var movieView: UIView!
    var mediaPlayer = VLCMediaPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        mediaPlayer.drawable = self.movieView
        
        if let URI = URI {
            let url = URL(string: URI)
            let media = VLCMedia(url: url)
            mediaPlayer.media = media
        }
        
        mediaPlayer.play()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        mediaPlayer.stop()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

