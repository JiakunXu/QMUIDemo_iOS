//
//  QDTableViewCellDynamicHeightViewController.m
//  qmuidemo
//
//  Created by QMUI Team on 2018/03/16.
//  Copyright © 2018年 QMUI Team. All rights reserved.
//

#import "QDCellHeightKeyCacheViewController.h"
#import "QDDynamicHeightTableViewCell.h"

static NSString * const kCellIdentifier = @"cell";

@interface QDCellHeightKeyCacheViewController ()

@property(nonatomic, strong) QMUIOrderedDictionary *dataSource;
@end

@implementation QDCellHeightKeyCacheViewController

- (void)didInitializeWithStyle:(UITableViewStyle)style {
    [super didInitializeWithStyle:style];
    self.dataSource = [[QMUIOrderedDictionary alloc] initWithKeysAndObjects:
                       @"张三 的想法", @"全局 UI 配置：只需要修改一份配置表就可以调整 App 的全局样式，包括颜色、导航栏、输入框、列表等。一处修改，全局生效。",
                       @"李四 的想法", @"UIKit 拓展及版本兼容：拓展多个 UIKit 的组件，提供更加丰富的特性和功能，提高开发效率；解决不同 iOS 版本常见的兼容性问题。",
                       @"王五 的想法", @"高效的工具方法及宏：提供高效的工具方法，包括设备信息、动态字体、键盘管理、状态栏管理等，可以解决各种常见场景并大幅度提升开发效率。",
                       @"QMUI Team 的想法", @"全局 UI 配置：只需要修改一份配置表就可以调整 App 的全局样式，包括颜色、导航栏、输入框、列表等。一处修改，全局生效。\nUIKit 拓展及版本兼容：拓展多个 UIKit 的组件，提供更加丰富的特性和功能，提高开发效率；解决不同 iOS 版本常见的兼容性问题。\n高效的工具方法及宏：提供高效的工具方法，包括设备信息、动态字体、键盘管理、状态栏管理等，可以解决各种常见场景并大幅度提升开发效率。",
                       
                       @"张三 的想法1", @"全局 UI 配置：只需要修改一份配置表就可以调整 App 的全局样式，包括颜色、导航栏、输入框、列表等。一处修改，全局生效。",
                       @"李四 的想法1", @"UIKit 拓展及版本兼容：拓展多个 UIKit 的组件，提供更加丰富的特性和功能，提高开发效率；解决不同 iOS 版本常见的兼容性问题。",
                       @"王五 的想法1", @"高效的工具方法及宏：提供高效的工具方法，包括设备信息、动态字体、键盘管理、状态栏管理等，可以解决各种常见场景并大幅度提升开发效率。",
                       @"QMUI Team 的想法1", @"全局 UI 配置：只需要修改一份配置表就可以调整 App 的全局样式，包括颜色、导航栏、输入框、列表等。一处修改，全局生效。\nUIKit 拓展及版本兼容：拓展多个 UIKit 的组件，提供更加丰富的特性和功能，提高开发效率；解决不同 iOS 版本常见的兼容性问题。\n高效的工具方法及宏：提供高效的工具方法，包括设备信息、动态字体、键盘管理、状态栏管理等，可以解决各种常见场景并大幅度提升开发效率。",
                       
                       @"张三 的想法2", @"全局 UI 配置：只需要修改一份配置表就可以调整 App 的全局样式，包括颜色、导航栏、输入框、列表等。一处修改，全局生效。",
                       @"李四 的想法2", @"UIKit 拓展及版本兼容：拓展多个 UIKit 的组件，提供更加丰富的特性和功能，提高开发效率；解决不同 iOS 版本常见的兼容性问题。",
                       @"王五 的想法2", @"高效的工具方法及宏：提供高效的工具方法，包括设备信息、动态字体、键盘管理、状态栏管理等，可以解决各种常见场景并大幅度提升开发效率。",
                       @"QMUI Team 的想法2", @"全局 UI 配置：只需要修改一份配置表就可以调整 App 的全局样式，包括颜色、导航栏、输入框、列表等。一处修改，全局生效。\nUIKit 拓展及版本兼容：拓展多个 UIKit 的组件，提供更加丰富的特性和功能，提高开发效率；解决不同 iOS 版本常见的兼容性问题。\n高效的工具方法及宏：提供高效的工具方法，包括设备信息、动态字体、键盘管理、状态栏管理等，可以解决各种常见场景并大幅度提升开发效率。",
                       
                       @"张三 的想法3", @"全局 UI 配置：只需要修改一份配置表就可以调整 App 的全局样式，包括颜色、导航栏、输入框、列表等。一处修改，全局生效。",
                       @"李四 的想法3", @"UIKit 拓展及版本兼容：拓展多个 UIKit 的组件，提供更加丰富的特性和功能，提高开发效率；解决不同 iOS 版本常见的兼容性问题。",
                       @"王五 的想法3", @"高效的工具方法及宏：提供高效的工具方法，包括设备信息、动态字体、键盘管理、状态栏管理等，可以解决各种常见场景并大幅度提升开发效率。",
                       @"QMUI Team 的想法3", @"全局 UI 配置：只需要修改一份配置表就可以调整 App 的全局样式，包括颜色、导航栏、输入框、列表等。一处修改，全局生效。\nUIKit 拓展及版本兼容：拓展多个 UIKit 的组件，提供更加丰富的特性和功能，提高开发效率；解决不同 iOS 版本常见的兼容性问题。\n高效的工具方法及宏：提供高效的工具方法，包括设备信息、动态字体、键盘管理、状态栏管理等，可以解决各种常见场景并大幅度提升开发效率。",
                       nil];
}

- (void)setupNavigationItems {
    [super setupNavigationItems];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Reload" style:UIBarButtonItemStyleDone target:self action:@selector(handleRightBarButtonItem)];
}

- (void)initTableView {
    [super initTableView];
    // 如果需要自动缓存 cell 高度的计算结果，则打开这个属性，然后实现 - [QMUITableViewDelegate qmui_tableView:cacheKeyForRowAtIndexPath:] 方法即可
    // 只要打开这个属性，cell 的 self-sizing 特性也会被开启，所以请保证你的 cell 正确重写了 sizeThatFits: 方法（Auto-Layout 的忽略这句话）
    self.tableView.estimatedRowHeight = 300;// 注意，QMUI 通过配置表的开关 TableViewEstimatedHeightEnabled，默认在所有 iOS 版本打开 estimatedRowHeight（系统是在 iOS 11 之后默认打开），所以图方便的话这一句也可以不用写。
    self.tableView.qmui_cacheCellHeightByKeyAutomatically = YES;
}

- (void)handleRightBarButtonItem {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:3 inSection:0];
    id<NSCopying> cachedKey = [self.tableView.delegate qmui_tableView:self.tableView cacheKeyForRowAtIndexPath:indexPath];
    
    // 1. 模拟业务场景某个 indexPath 的数据发生变化
    [self.dataSource setObject:@"变化后的内容" forKey:self.dataSource.allKeys[indexPath.row]];
    
    // 2. 在更新 UI 之前先令对应的缓存失效
    [self.tableView qmui_invalidateHeightForKey:cachedKey];
    
    // 3. 更新 UI
    [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

#pragma mark - <QMUITableViewDelegate, QMUITableViewDataSource>

- (id<NSCopying>)qmui_tableView:(UITableView *)tableView cacheKeyForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 返回一个用于标记当前 cell 高度的 key，只要 key 不变，高度就不会重新计算，所以建议将有可能影响 cell 高度的数据字段作为 key 的一部分（例如 username、content.md5 等），这样当数据发生变化时，只要触发 cell 的渲染，高度就会自动更新
    NSString *keyName = self.dataSource.allKeys[indexPath.row];
    NSString *contentText = [self.dataSource objectForKey:keyName];
    return @(contentText.length);// 这里简单处理，认为只要长度不同，高度就不同（但实际情况下长度就算相同，高度也有可能不同，要注意）
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    QDDynamicHeightTableViewCell *cell = (QDDynamicHeightTableViewCell *)[tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    if (!cell) {
        cell = [[QDDynamicHeightTableViewCell alloc] initForTableView:tableView withReuseIdentifier:kCellIdentifier];
    }
    cell.separatorInset = UIEdgeInsetsZero;
    NSString *keyName = self.dataSource.allKeys[indexPath.row];
    [cell updateCellAppearanceWithIndexPath:indexPath];
    [cell renderWithNameText:[NSString stringWithFormat:@"%@ - %@", @(indexPath.row), keyName] contentText:[self.dataSource objectForKey:keyName]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView qmui_clearsSelection];
}

@end
