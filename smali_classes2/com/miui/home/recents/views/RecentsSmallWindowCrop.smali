.class public Lcom/miui/home/recents/views/RecentsSmallWindowCrop;
.super Lcom/miui/home/recents/views/RecentsTopWindowCrop;
.source "RecentsSmallWindowCrop.java"


# instance fields
.field private mHeight:I

.field private mSmallwindowBackground:Landroid/view/View;

.field private mSmallwindowContent:Landroid/view/ViewGroup;

.field private mSmallwindowContentTransX:I

.field private mSmallwindowContentTransY:I

.field private mSmallwindowDragText:Landroid/widget/TextView;

.field private mSmallwindowHoldText:Landroid/widget/TextView;

.field private mSmallwindowIcon:Landroid/view/View;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private isToDragState(FFF)Z
    .locals 4

    iget-boolean p3, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsLandscape:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v2, 0x3fd916872b020c4aL    # 0.392

    cmpg-double p1, p1, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget p3, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenHeight:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    const-wide v2, 0x3fe1cac083126e98L    # 0.556

    cmpg-double p2, p2, v2

    if-gez p2, :cond_2

    iget p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide v2, 0x3fe3ae147ae147aeL    # 0.615

    cmpl-double p1, p1, v2

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private isToHoldState(FFF)Z
    .locals 8

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsLandscape:Z

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v4, 0x3fd051eb851eb852L    # 0.255

    cmpg-double p1, p1, v4

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenHeight:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-double v4, p2

    const-wide v6, 0x3fd73b645a1cac08L    # 0.363

    cmpg-double p2, v4, v6

    if-gez p2, :cond_2

    iget p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide v4, 0x3fe883126e978d50L    # 0.766

    cmpl-double p1, p1, v4

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method private setViewTranslation(Landroid/view/View;FFZ)V
    .locals 6

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p4

    cmpl-float p4, p4, p2

    if-nez p4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p4

    cmpl-float p4, p4, p3

    if-nez p4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p4

    sub-float p4, p2, p4

    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransX:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-long v1, p4

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p4

    sub-float p4, p3, p4

    iget v3, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransY:I

    int-to-float v3, v3

    div-float/2addr p4, v3

    mul-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-long v3, p4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public enterDragState(FF)V
    .locals 2

    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget p2, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_DRAG:I

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string p2, "enterDragState"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, p0, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    const p2, 0x3f0a3d71    # 0.54f

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;FJ)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    sget p1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_DRAG:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mOpenContent:I

    :cond_0
    return-void
.end method

.method public enterHoldState(FF)Z
    .locals 1

    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget p2, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_HOLD:I

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string p2, "enterHoldState"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p0, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    sget p1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_HOLD:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    iput p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mOpenContent:I

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public enterShowState()V
    .locals 4

    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_SHOW:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "enterShowState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransY:I

    int-to-float v2, v2

    iget-boolean v3, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    sget v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_SHOW:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    iput v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mOpenContent:I

    :cond_1
    return-void
.end method

.method public exitTopWindowCrop(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop$1;-><init>(Lcom/miui/home/recents/views/RecentsSmallWindowCrop;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setAlpha(F)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mWidth:I

    iget v2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mHeight:I

    const/16 v3, 0x7f6

    const v4, 0x4000238

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/high16 v0, 0x10000000

    invoke-static {v6, v0}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->addExtraFlag(Landroid/view/WindowManager$LayoutParams;I)V

    const/16 v0, 0x35

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v0, "home_smallwindow_crop"

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method public initTopWindowCrop(ZIIZZ)V
    .locals 0

    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string p5, "initSmallWindowCrop"

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    iput-boolean p4, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    sget p4, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput p4, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    const/4 p4, 0x0

    iput p4, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mOpenContent:I

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsLandscape:Z

    iput p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenWidth:I

    iput p3, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenHeight:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setAlpha(F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->onFinishInflate()V

    const v0, 0x7f0a028d

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    const v0, 0x7f0a0318

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    const v0, 0x7f0a0290

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    const v0, 0x7f0a028f

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    const v0, 0x7f0a0317

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->updateConfiguration()V

    return-void
.end method

.method public resetTopWindowCrop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "resetSmallWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public startTopWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->startSmallWindow(Landroid/graphics/RectF;)V

    return-void
.end method

.method public updateConfiguration()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080652

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080694

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0605af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1103dc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1103db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070613

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mWidth:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mHeight:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070611

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070610

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07060b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransX:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransY:I

    return-void
.end method

.method public updateState(FFF)Z
    .locals 2

    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->enterShowState()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isToHoldState(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->enterHoldState(FF)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isToDragState(FFF)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->enterDragState(FF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->enterShowState()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
