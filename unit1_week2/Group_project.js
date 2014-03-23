var list_1=[1,2,3,4,5,5,7]

  
  var sum = 0;
   for(var i=0, n=list_1.length; i < n; i++) 
 { 
      sum += list_1[i]; 
 }
			console.log (sum);


 var mean = sum/list_1.length;
	 		
	 		console.log(mean);
 
 var median = 0,
        numbers = list_1.length;
    
    if (numbers % 2 === 0) { 
        median = (list_1[numbers / 2 - 1] + list_1[numbers / 2]) / 2;
    } else { 
        median = list_1[(numbers - 1) / 2];
    }

    console.log (median) 



var list_2=[4,4,5,5,6,6,6,7]

  var sum = 0;
   for(var i=0, n=list_2.length; i < n; i++) 
{ 
      sum += list_2[i]; 
}
			console.log (sum);

	var mean = sum/list_2.length;
			console.log(mean);
 var median = 0,
        numbers = list_2.length;
    
    if (numbers % 2 === 0) { 
        median = (list_2[numbers / 2 - 1] + list_2[numbers / 2]) / 2;
    } else { 
        median = list_2[(numbers - 1) / 2];
    }

    console.log (median) 