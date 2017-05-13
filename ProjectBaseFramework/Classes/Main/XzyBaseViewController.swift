//
//  XzyBaseViewController.swift
//  
//
//  Created by 一天 on 2017/3/1.
//  Copyright © 2017年 肖振阳. All rights reserved.
//

import UIKit
/// OC 没有多继承 可以使用协议代替
//class XzyBaseViewController: UIViewController : UITableViewDelegate,UITableViewDataSource
class XzyBaseViewController: UIViewController {

    /// UITableView
    var tableView : UITableView?

    
    let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 64))
    
    let navItem = UINavigationItem()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setUpUI()
     
    }
    deinit {
        
        print("deinit\(self)")
        // 注销通知
        NotificationCenter.default.removeObserver(self)
    }
    override var title: String?{
    
        didSet{
          navItem.title = title
        
        }
    }
}

// MARK: - 隔离代码
extension XzyBaseViewController{

    
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
    
    }
    func setUpUI()  {

        /// 取消自动缩进 如果隐藏nav 会缩进20个点
        automaticallyAdjustsScrollViewInsets = false
        
        setUpNavBar()
        setUpTableView()

    
    }
     func setUpTableView(){
    
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView?.delegate = self
        tableView?.dataSource = self
        view.insertSubview(tableView!, belowSubview: navigationBar)
        
        /// 设置内容缩进
        tableView?.contentInset = UIEdgeInsetsMake(navigationBar.bounds.height, 0, tabBarController?.tabBar.bounds.height ?? 49, 0)
        
        // 修改指示器的缩进 - 强行解包是为了拿到一个必有的 inset
        tableView?.scrollIndicatorInsets = tableView!.contentInset
       
    }
    
    private func setUpNavBar(){
        navigationBar.barTintColor = UIColor.white
        navigationBar.tintColor = UIColor.orange
        view.addSubview(navigationBar)
        
        navigationBar.items = [navItem]
        /// 设置navBar的字体颜色
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.darkGray]
        
    }

}

// MARK: - UITableViewDelegate,UITableViewDataSource
extension XzyBaseViewController : UITableViewDelegate,UITableViewDataSource {


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 10
    }
    

}
