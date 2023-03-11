//
//  HomeVC.swift
//  LittlePink
//
//  Created by Jwr on 2023/3/10.
//

import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        //print(storyboard)
        let followVC = storyboard!.instantiateViewController(identifier: kFollowVCID)
        
        let discoveryVC = storyboard!.instantiateViewController(identifier: kDiscoveryVCID)
        let nearByVC = storyboard!.instantiateViewController(identifier: kNearByVCID)
        return [followVC, discoveryVC, nearByVC]
    }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
