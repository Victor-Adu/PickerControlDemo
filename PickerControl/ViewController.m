//
//  ViewController.m
//  PickerControl
//
//  Created by Victor  Adu on 4/29/14.
//  Copyright (c) 2014 Victor  Adu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray *moods;

@end

@implementation ViewController

//Return one number of components (the number of spinning wheels) in the Picker
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

//Numberof Rows that should appear in our component(s) method above
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    // We just basically passed the Moods array into the Number of Rows that should show.
    return [[self moods] count];
}

//This method will be called multiple times allowing us to call each particular row each time.
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.moods[row];
}

//When row is selected, then what happens...(Here you can do different things to each row. Let's change colors for each row.
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    UIColor *moodColor;
    
    switch (row) {
        case 0: case 3: case 4: case 5: case 8:   //all represent happy moods from array.
            moodColor = [UIColor colorWithRed:1.0 green:0.85 blue:0.0 alpha:1.0 ];
            break;
        case 1: case 2: case 6:
            moodColor = [UIColor colorWithRed:94.0/255.0 green:138.0/255.0 blue:168.0/255.0 alpha:1.0];
            break;
        case 7:
            moodColor = [UIColor darkGrayColor];
            break;
        case 9: case 10:
            moodColor = [UIColor grayColor];
            break;
        default:
            moodColor = [UIColor whiteColor];
            break;
    }
    [[self view] setBackgroundColor:moodColor];
    //or
    //self.view.backgoundColor = moodColor;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.moods = @[@"Happy", @"Sad", @"Maudlin", @"Ecstatic", @"Overjoyed", @"Optimistic", @"Bewildered",
                   @"Cynical", @"Giddy", @"Indifferent", @"Relaxed"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
