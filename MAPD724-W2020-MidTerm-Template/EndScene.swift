//  MAPD724-F2020-MidTerm-301093942
//  Student Name: Lohit Mahay
//  Student ID: 301093942
//  Test Date: Feb 19, 2020
import UIKit
import AVFoundation
import SpriteKit
import GameplayKit


class EndScene: SKScene {
    
    
    var oceanSprite1: Ocean?
    var oceanSprite2: Ocean?
    
    override func didMove(to view: SKView)
    {
        screenWidth = frame.width
        screenHeight = frame.height

        self.name = "END"
        
        //DELETING OCEAN
        /* add ocean
        self.oceanSprite1 = Ocean()
        self.oceanSprite1?.position = CGPoint(x: 0, y: 1864.67)
            self.addChild(oceanSprite1!) */
        
        self.oceanSprite2 = Ocean()
        self.oceanSprite2?.position = CGPoint(x: 0, y: 177)
          self.oceanSprite2?.size = CGSize(width: 5000, height: 5000)
        self.addChild(oceanSprite2!)
        
    }
    
    func touchDown(atPoint pos : CGPoint)
    {
        
    }
    
    func touchMoved(toPoint pos : CGPoint)
    {
        
    }
    
    func touchUp(atPoint pos : CGPoint)
    {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchDown(atPoint: t.location(in: self))}
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchMoved(toPoint: t.location(in: self))}
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self))}
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self))}
    }
    
    
    override func update(_ currentTime: TimeInterval)
    {
      //  self.oceanSprite1?.Update()
        self.oceanSprite2?.Update()
    
    }
}

