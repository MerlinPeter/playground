 
 public class Controller {
    
    var questionType : String = "Not Defined" ;
    
    
    public init() { }
    
    public enum Order {
        case MostFav
        case LestFav
        case Ascending
    }

    
    public func askQuestion (){
        
        let myModel = Model()
   
        
            print ("What are your Favourite foods ? ")
            self.questionType = "foods";
        
            printFavourites(myModel.foods ,printOrder: .MostFav) //orginal order
        
            print ("What are your Favourite movies ? ")
            self.questionType = "movies";
        
            printFavourites(myModel.movies ,printOrder: .Ascending) //alphabetical order
        
            print ("What are your  Favourite places ? ")
            self.questionType = "places";
        
            printFavourites(myModel.places ,printOrder: .LestFav) // reverse order
        
        //}
        
    }
    

    public func printFavourites ( var inputArray :[String] ,printOrder : Order){
        
        
        switch printOrder {
        case .MostFav : break
        case .Ascending:
            inputArray = inputArray.sort();
        case .LestFav:
             inputArray = inputArray.reverse()
            
            
        }
 
        var printableformat : String = "My favorite " + self.questionType  + " are"
        
        let arraylastelement = inputArray.count - 1
        
        for( var i = 0 ; i < inputArray.count ; i++) {
            
          switch i {
            case 0 :
                printableformat = printableformat + "  " + inputArray[i]
            case arraylastelement :
                printableformat = printableformat + " and " + inputArray[i] + "." 
            default :
                printableformat = printableformat + " , " + inputArray[i]
           }
            
          
        }
        
        print(printableformat)
    }
    
 }
