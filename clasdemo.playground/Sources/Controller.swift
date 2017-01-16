 
 //Controller Class with two functions
 
 public class Controller {
    
    //class variable to be used for define the question type
    var questionType : String = "Not Defined" ;
    
    
    public init() { }
    
    //Does the video show that the user used enums in their printFavorites function to indicate which favorites to display and the sort order? (2 points)
    public enum Order {
        case MostFav
        case LestFav
        case Ascending
    }

    
    public func askQuestion (input : String){
        
        //print the question type
        print ("What are your favourite " + input + " ? ")
        
        
       // Does the video show that the printFavorites function gets the original lists of favorites from an instance of the Model class? (3 points)
        //variable myModel based on model class , printFavourites function gets its input from the model array instance variavle
        let myModel = Model()
        
        switch input {
            
        case "foods":
            printFavourites(myModel.foods ,printOrder: .MostFav) //first argument is foods aray from model class and second argument is the order type here it is original order
        case "movies":
            printFavourites(myModel.movies ,printOrder: .Ascending) //first argument is foods aray from model class and second argument is the order type here it is alphabetical order
        case "places":
            printFavourites(myModel.places ,printOrder: .LestFav) // first argument is foods aray from model class and second argument is the order type here it isreverse order
        default :
            print("Not implemented")
        
        }
    
    }
    

    func printFavourites ( var inputArray :[String] ,printOrder : Order){
        
        //process the array based on the enum type as input parameter
        
        switch printOrder {
        case .MostFav :
              //orginal order no change required
              break
        case .Ascending:
             // sort the array, default order is ascending
            inputArray = inputArray.sort();
        case .LestFav:
             //reverse the array
             inputArray = inputArray.reverse()
            
            
        }
  
        
        //format string in acceptable format
      
        var printableformat : String = "My favorite " + self.questionType  + " are"
        
        let arraylastelement = inputArray.count - 1
        
        for( var i = 0 ; i < inputArray.count ; i++) {
            
          switch i {
            case 0 :
                printableformat = printableformat + "  " + inputArray[i]
            case arraylastelement :
                printableformat = printableformat + " and " + inputArray[i] + "." 
            default :
                printableformat = printableformat + ", " + inputArray[i]
           }
            
          
        }
        
        print(printableformat+"\n")
    }
    
 }
/*
 Does the video show that the printFavorites and askQuestion functions were defined in their own Class called Controller? (1 point)
 */