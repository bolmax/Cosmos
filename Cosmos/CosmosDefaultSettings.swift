import UIKit

/**

Defaults setting values.

*/
struct CosmosDefaultSettings {
  init() {}
  
  static let defaultColor = UIColor(red: 1.0, green: 149/255.0, blue: 0.0, alpha: 1.0)
  static let firstStarColor = UIColor(red: 204/255.0, green: 20/255.0, blue: 128/255.0, alpha: 1.0)
  static let secondStarColor = UIColor(red: 217/255.0, green: 37/255.0, blue: 118/255.0, alpha: 1.0)
  static let thirdStarColor = UIColor(red: 229/255.0, green: 57/255.0, blue: 108/255.0, alpha: 1.0)
  static let fourthStarColor = UIColor(red: 240/255.0, green: 75/255.0, blue: 97/255.0, alpha: 1.0)
  static let fifthStarColor = UIColor(red: 1.0, green: 95/255, blue: 90/255.0, alpha: 1.0)
  
  // MARK: - Star settings
  // -----------------------------

  /// Border color of an empty star.
  static let emptyBorderColor = defaultColor
  
  /// Width of the border for the empty star.
  static let emptyBorderWidth: Double = 1 / Double(UIScreen.main.scale)
  
  /// Border color of a filled star.
  static let filledBorderColor = defaultColor
  
  /// Width of the border for a filled star.
  static let filledBorderWidth: Double = 1 / Double(UIScreen.main.scale)
  
  /// Background color of an empty star.
  static let emptyColor = UIColor.clear
  
  /// Background color of a filled star.
  static let filledColor = defaultColor
    
  // MARK: - Rating text color
  // -----------------------------
    
  /// Rating text color.
  static let ratingTextColor = UIColor.gray
    
  /// Rating text color.
  static let ratingTextFilledColor = UIColor.white
    
  /// Rating text color.
  static let showRatingText = false
    
  /// Rating text font.
  static let ratingFont = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.footnote)
    
  /// Rating text font size.
  static var ratingFontSize: CGFloat {
     get {
        return textFont.pointSize
     }
  }
  
  /**

  Defines how the star is filled when the rating value is not an integer value. It can either show full stars, half stars or stars partially filled according to the rating value.

  */
  static let fillMode = StarFillMode.full
  
  /// Rating value that is shown in the storyboard by default.
  static let rating: Double = 2.718281828
  
  /// Distance between stars.
  static let starMargin: Double = 5
  
  /**
  
  Array of points for drawing the star with size of 100 by 100 pixels. Supply your points if you need to draw a different shape.
  
  */
  static let starPoints: [CGPoint] = [
    CGPoint(x: 49.5,  y: 0.0),
    CGPoint(x: 60.5,  y: 35.0),
    CGPoint(x: 99.0, y: 35.0),
    CGPoint(x: 67.5,  y: 58.0),
    CGPoint(x: 78.5,  y: 92.0),
    CGPoint(x: 49.5,    y: 71.0),
    CGPoint(x: 20.5,  y: 92.0),
    CGPoint(x: 31.5,  y: 58.0),
    CGPoint(x: 0.0,   y: 35.0),
    CGPoint(x: 38.5,  y: 35.0)
  ]
    
    /**
     Sodexo array of points for drawing the star with size of 100 by 100 pixels. Supply your points if you need to draw a different shape.
     */
    static let sdStarPoints: [CGPoint] = [
        CGPoint(x: 50.0,  y: 0.0),
        CGPoint(x: 65.0,  y: 33.0),
        CGPoint(x: 100.0, y: 38.0),
        CGPoint(x: 75.0,  y: 64.0),
        CGPoint(x: 81.0,  y: 100.0),
        CGPoint(x: 50.0,  y: 83.0),
        CGPoint(x: 19.0,  y: 100.0),
        CGPoint(x: 25.0,  y: 64.0),
        CGPoint(x: 0.0,   y: 38.0),
        CGPoint(x: 35.0,  y: 33.0)
    ]
  
  /// Size of a single star.
  static var starSize: Double = 20

  /// The total number of stars to be shown.
  static let totalStars = 5
  
  
  // MARK: - Text settings
  // -----------------------------
  
  
  /// Color of the text.
  static let textColor = UIColor(red: 127/255, green: 127/255, blue: 127/255, alpha: 1)
  
  /// Font for the text.
  static let textFont = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.footnote)
  
  /// Distance between the text and the stars.
  static let textMargin: Double = 5
  
  /// Calculates the size of the default text font. It is used for making the text size configurable from the storyboard.
  static var textSize: Double {
    get {
      return Double(textFont.pointSize)
    }
  }
  
  
  // MARK: - Touch settings
  // -----------------------------

  /// The lowest rating that user can set by touching the stars.
  static let minTouchRating: Double = 1
  
  /// Set to `false` if you don't want to pass touches to superview (can be useful in a table view).
  static let passTouchesToSuperview = true
  
  /// When `true` the star fill level is updated when user touches the cosmos view. When `false` the Cosmos view only shows the rating and does not act as the input control.
  static let updateOnTouch = true
}
