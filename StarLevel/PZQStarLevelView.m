

#import "PZQStarLevelView.h"
#import "Masonry.h"

@implementation PZQStarLevelView

- (void)setScore:(CGFloat)score
{
    NSInteger full_star = (NSInteger)score;
    //满星
    for (NSInteger i = 0; i < full_star; i++)
    {
        [self loadStarWithImageName:@"full_star" andPosition:i];;
    }
    //半星
    if (score - (NSInteger)score)
    {
        [self loadStarWithImageName:@"half_star" andPosition:full_star];
        full_star++;
    }
    //空星
    for (NSInteger i = full_star; i < 5; i++)
    {
        [self loadStarWithImageName:@"empty_star" andPosition:i];
    }
}


- (void)loadStarWithImageName:(NSString *)imageName andPosition:(NSInteger)position
{
    UIImageView *imageView = nil;
    if (self.subviews.count == 5)
    {
        imageView = self.subviews[position];
    }
    else
    {
        imageView = [[UIImageView alloc] init];
        imageView.frame = CGRectMake(self.bounds.size.height * position , 0, self.bounds.size.height , self.bounds.size.height);
        [self addSubview:imageView];
    }
    imageView.image = [UIImage imageNamed:imageName];
    
}


@end
