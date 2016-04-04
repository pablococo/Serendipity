//
//  ListViewController.swift
//  Serendipity
//
//  Created by Pablo coco on 2016. 4. 1..
//  Copyright © 2016년 cocoplanners. All rights reserved.
//

import UIKit

class ListViewController : UITableViewController{
    var list = Array<PostVO>()
    
    @IBOutlet var postTable: UITableView!
    
    override func viewDidLoad() {
        var pvo = PostVO()
        pvo.thumbnail = "11.png"
//        pvo.place = "장남식당"
        pvo.detail = "http://blog.naver.com/coen11/220510763030"
        self.list.append(pvo)
        
        pvo = PostVO()
        pvo.thumbnail = "22.png"
//        pvo.place = "한우만"
        pvo.detail = "http://blog.naver.com/coen11/220570702669"
        self.list.append(pvo)
        
        pvo = PostVO()
        pvo.thumbnail = "33.png"
        pvo.detail = "http://blog.naver.com/coen11/220563046142"
        self.list.append(pvo)
        
        pvo = PostVO()
        pvo.thumbnail = "44.png"
        pvo.detail = "http://blog.naver.com/coen11/220655754556"
        self.list.append(pvo)
        
        pvo = PostVO()
        pvo.thumbnail = "55.png"
        pvo.detail = "http://blog.naver.com/coen11/220072063054"
        self.list.append(pvo)
        
        pvo = PostVO()
        pvo.thumbnail = "66.png"
        pvo.detail = "http://blog.naver.com/coen11/220201478568"
        self.list.append(pvo)
        
        pvo = PostVO()
        pvo.thumbnail = "77.png"
        pvo.detail = "http://blog.naver.com/coen11/220100241199"
        self.list.append(pvo)
        
        pvo = PostVO()
        pvo.thumbnail = "88.png"
        pvo.detail = "http://blog.naver.com/coen11/220440860785"
        self.list.append(pvo)
        
        pvo = PostVO()
        pvo.thumbnail = "99.png"
        pvo.detail = "http://blog.naver.com/coen11/220434064073"
        self.list.append(pvo)
        
        pvo = PostVO()
        pvo.thumbnail = "100.png"
        pvo.detail = "http://blog.naver.com/coen11/220562284273"
        self.list.append(pvo)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = self.list[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ListCell") as! PostCell
        cell.textLabel?.text = row.place
        cell.thumbnail.image = UIImage(named: row.thumbnail!)
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        NSLog("Touch Table Row at %d", indexPath.row)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segue_detail"){
//            let path = self.postTable.indexPathForCell(sender as! PostCell)
//            (segue.destinationViewController as? DetailViewController)?.pvo = self.list[path!.row]
            
            let cell = sender as! PostCell
            
            let path = self.postTable.indexPathForCell(cell)
            
            let param = self.list[path!.row]
            
            (segue.destinationViewController as? DetailViewController)?.pvo = param
        }
    }
}
