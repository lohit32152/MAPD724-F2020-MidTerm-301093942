//  MAPD724-F2020-MidTerm-301093942
//  Student Name: Lohit Mahay
//  Student ID: 301093942
//  Test Date: Feb 19, 2020
import SpriteKit

class Plane: GameObject
{
    // constructor
    init()
    {
        super.init(imageString: "plane", initialScale: 1.25)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds()
    {
        // right boundary
        if(self.position.x >= 307 - self.halfWidth!)
        {
            self.position.x = 307 - self.halfWidth!
        }
        
        // left boundary
        if(self.position.x <= -307 + self.halfWidth!)
        {
            self.position.x = -307 + self.halfWidth!
        }
    }
    
    override func Reset()
    {
        
    }
    
    override func Start()
    {
        self.zPosition = 2
    }
    
    override func Update()
    {
        self.CheckBounds()
    }
    
    func TouchMove(newPos: CGPoint)
    {
        self.position = newPos
    }
}
