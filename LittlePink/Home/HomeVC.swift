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
        
        // MARK: 自定义tabUI
        settings.style.selectedBarBackgroundColor = UIColor(named: "main")!
        settings.style.selectedBarHeight = 3
        
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemFont = .systemFont(ofSize: 16)
        
        settings.style.buttonBarItemLeftRightMargin = 0
        
        
        super.viewDidLoad()
        
        
        

        // Do any additional setup after loading the view.
    }
    
//    override func calculateStretchedCellWidths(_ minimumCellWidths: [CGFloat], suggestedStretchedCellWidth: CGFloat, previousNumberOfLargeCells: Int) -> CGFloat {
//        10
//    }
//
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
