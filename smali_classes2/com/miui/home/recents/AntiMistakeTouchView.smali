.class public Lcom/miui/home/recents/AntiMistakeTouchView;
.super Landroid/view/View;
.source "AntiMistakeTouchView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/AntiMistakeTouchView$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mHandler:Lcom/miui/home/recents/AntiMistakeTouchView$H;

.field private mRect:Landroid/graphics/Rect;

.field private mSlideAnimator:Landroid/animation/ValueAnimator;

.field private mTopMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AntiMistakeTouchView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/recents/AntiMistakeTouchView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/AntiMistakeTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/AntiMistakeTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/home/recents/AntiMistakeTouchView$H;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/recents/AntiMistakeTouchView$H;-><init>(Lcom/miui/home/recents/AntiMistakeTouchView;Lcom/miui/home/recents/AntiMistakeTouchView$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mHandler:Lcom/miui/home/recents/AntiMistakeTouchView$H;

    invoke-virtual {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08018a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableHeight:I

    sget-boolean p1, Lcom/miui/home/recents/AntiMistakeTouchView;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "AntiMistakeTouchView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AntiMistakeTouchView: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableHeight:I

    iput p1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mTopMargin:I

    new-instance p2, Landroid/graphics/Rect;

    iget p3, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mTopMargin:I

    iget v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    add-int/2addr p1, p3

    const/4 v1, 0x0

    invoke-direct {p2, v1, p3, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/AntiMistakeTouchView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/AntiMistakeTouchView;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/AntiMistakeTouchView;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/AntiMistakeTouchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->slideDown()V

    return-void
.end method

.method private initAnimator()V
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private slideDown()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->initAnimator()V

    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mTopMargin:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public containsLocation(F)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/AntiMistakeTouchView;->getLocationOnScreen([I)V

    sget-boolean v1, Lcom/miui/home/recents/AntiMistakeTouchView;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "AntiMistakeTouchView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contains: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget v0, v0, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public getFrameLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    iget v2, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    iget v2, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableHeight:I

    add-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mTopMargin:I

    sub-int v2, v1, p1

    mul-int/lit16 v2, v2, 0xff

    div-int/2addr v2, v1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget-boolean v0, Lcom/miui/home/recents/AntiMistakeTouchView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AntiMistakeTouchView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mHandler:Lcom/miui/home/recents/AntiMistakeTouchView$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/AntiMistakeTouchView$H;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public slideUp()V
    .locals 5

    sget-boolean v0, Lcom/miui/home/recents/AntiMistakeTouchView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AntiMistakeTouchView"

    const-string v1, "slideUp: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mHandler:Lcom/miui/home/recents/AntiMistakeTouchView$H;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/AntiMistakeTouchView$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->initAnimator()V

    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mHandler:Lcom/miui/home/recents/AntiMistakeTouchView$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/AntiMistakeTouchView$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public updateVisibilityState(I)V
    .locals 3

    sget-boolean v0, Lcom/miui/home/recents/AntiMistakeTouchView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AntiMistakeTouchView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVisibilityState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mTopMargin:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/AntiMistakeTouchView;->setVisibility(I)V

    :cond_3
    return-void
.end method
