.class public Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;
.super Lcom/miui/home/recents/views/RecentsTopWindowCrop;
.source "RecentsTopWindowSingleDropTargetSmallWindow.java"


# instance fields
.field private mSmallwindowBackground:Landroid/view/View;

.field private mSmallwindowContent:Landroid/view/ViewGroup;

.field private mSmallwindowContentTransX:I

.field private mSmallwindowContentTransY:I

.field private mSmallwindowDragText:Landroid/widget/TextView;

.field private mSmallwindowHoldText:Landroid/widget/TextView;

.field private mSmallwindowIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getLayoutParamForWindow()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    invoke-super {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->getLayoutParamForWindow()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0
.end method

.method public initDropTarget(ZZ)V
    .locals 4

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setAlpha(F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowBackground:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-boolean p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mIsLandscape:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mNearBound:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mScreenHeight:I

    int-to-float v1, v1

    const v2, 0x3ec8b439    # 0.392f

    mul-float/2addr v1, v2

    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mHoverBound:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mScreenHeight:I

    int-to-float v1, v1

    const v2, 0x3e828f5c    # 0.255f

    mul-float/2addr v1, v2

    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mNearBound:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mScreenWidth:I

    int-to-float v0, v0

    const v1, 0x3f1d70a4    # 0.615f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mScreenHeight:I

    int-to-float v2, v2

    const v3, 0x3f0e5604    # 0.556f

    mul-float/2addr v2, v3

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mHoverBound:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mScreenWidth:I

    int-to-float v0, v0

    const v1, 0x3f441893    # 0.766f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mScreenHeight:I

    int-to-float v2, v2

    const v3, 0x3eb9db23    # 0.363f

    mul-float/2addr v2, v3

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    return-void
.end method

.method public isToHoverState(FFF)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->isToHoverState(FFF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDrop(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->startSmallWindow(Landroid/graphics/RectF;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f0a0292

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowBackground:Landroid/view/View;

    const v0, 0x7f0a031f

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowIcon:Landroid/view/View;

    const v0, 0x7f0a0295

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    const v0, 0x7f0a0294

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowDragText:Landroid/widget/TextView;

    const v0, 0x7f0a031e

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-super {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->onFinishInflate()V

    return-void
.end method

.method public onHover(FF)V
    .locals 1

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->TAG:Ljava/lang/String;

    const-string p2, "onHover"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowBackground:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowDragText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContent:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewTranslation(Landroid/view/View;FFZ)V

    return-void
.end method

.method public onNear(FF)V
    .locals 2

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->TAG:Ljava/lang/String;

    const-string p2, "onNear"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, p0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowBackground:Landroid/view/View;

    const p2, 0x3f0a3d71    # 0.54f

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowDragText:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;FJ)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContent:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewTranslation(Landroid/view/View;FFZ)V

    return-void
.end method

.method public onShow(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->TAG:Ljava/lang/String;

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContent:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContentTransX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContentTransY:I

    int-to-float v2, v2

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewTranslation(Landroid/view/View;FFZ)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    const p1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, p0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowBackground:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mLastCropStatus:I

    return-void
.end method

.method public resetDropTarget()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->TAG:Ljava/lang/String;

    const-string v1, "resetDropTarget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public setViewTranslation(Landroid/view/View;FFZ)V
    .locals 7

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContentTransX:I

    int-to-float v4, p4

    iget p4, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContentTransY:I

    int-to-float v5, p4

    iget-object v6, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewTranslationWithAnim(Landroid/view/View;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setViewTranslationNoAnim(Landroid/view/View;FF)V

    :goto_0
    return-void
.end method

.method public updateDropTargetConfiguration()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080656

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080698

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0605af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1103e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1103e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070613

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mWidth:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mHeight:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070611

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070610

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07060b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContentTransX:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowSingleDropTargetSmallWindow;->mSmallwindowContentTransY:I

    return-void
.end method
