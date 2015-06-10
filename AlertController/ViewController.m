//
//  ViewController.m
//  AlertController
//
//  Created by MAEDAHAJIME on 2015/06/10.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// [通知（ボタン１つ）]ボタン押す
- (IBAction)proc01:(id)sender{
    
    // コントローラを生成
    UIAlertController * ac =
    [UIAlertController alertControllerWithTitle:@"Title"
                                        message:@"Message"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    // Cancel用のアクションを生成
    UIAlertAction * cancelAction =
    [UIAlertAction actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleCancel
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"Cancel button tapped.");
                           }];
    
    // OK用のアクションを生成
    UIAlertAction * okAction =
    [UIAlertAction actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"OK button tapped.");
                           }];
    
    // コントローラにアクションを追加
    [ac addAction:cancelAction];
    [ac addAction:okAction];
    
    // アラート表示処理
    [self presentViewController:ac animated:YES completion:nil];

}

// [選択（ボタンたくさん）]ボタン押す
- (IBAction)proc02:(id)sender{
    
    // コントローラを生成
    UIAlertController * ac =
    [UIAlertController alertControllerWithTitle:@"Title"
                                        message:@"Message"
                                 preferredStyle:UIAlertControllerStyleActionSheet];
    
    // Cancel用のアクションを生成
    UIAlertAction * cancelAction =
    [UIAlertAction actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleCancel
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"Cancel button tapped.");
                           }];
    
    // Destructive用のアクションを生成
    UIAlertAction * destructiveAction =
    [UIAlertAction actionWithTitle:@"Destructive"
                             style:UIAlertActionStyleDestructive
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"Destructive button tapped.");
                           }];
    
    // OK用のアクションを生成
    UIAlertAction * okAction =
    [UIAlertAction actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"OK button tapped.");
                           }];
    
    // コントローラにアクションを追加
    [ac addAction:cancelAction];
    [ac addAction:destructiveAction];
    [ac addAction:okAction];
    
    // アクションシート表示処理
    [self presentViewController:ac animated:YES completion:nil];
    
}

@end
