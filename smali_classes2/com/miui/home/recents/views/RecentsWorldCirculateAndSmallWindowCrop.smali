.class public Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;
.super Lcom/miui/home/recents/views/RecentsTopWindowCrop;
.source "RecentsWorldCirculateAndSmallWindowCrop.java"


# instance fields
.field private final ITEM_BG_INITIAL_COLOR:I

.field private final SMALL_BG_IS_CHOSEN_COLOR:I

.field private final WORLD_BG_IS_CHOSEN_COLOR:I

.field private mAppToWorldCirculateRectF:Landroid/graphics/RectF;

.field private mHeight:I

.field private mItemBg:Landroid/graphics/drawable/GradientDrawable;

.field private mSmallwindowContent:Landroid/view/ViewGroup;

.field private mSmallwindowContentTransY:I

.field private mSmallwindowHoldText:Landroid/widget/TextView;

.field private mSmallwindowIcon:Landroid/view/View;

.field private mWidth:I

.field private mWorldcirculateContent:Landroid/view/ViewGroup;

.field private mWorldcirculateHoldText:Landroid/widget/TextView;

.field private mWorldcirculateIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "#26B2B2B2"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->ITEM_BG_INITIAL_COLOR:I

    const-string p1, "#808288C0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->WORLD_BG_IS_CHOSEN_COLOR:I

    const-string p1, "#80B2B2B2"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->SMALL_BG_IS_CHOSEN_COLOR:I

    return-void
.end method

.method private initViewDisplayInDrag()V
    .locals 3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportMiniSmallWindow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportWorldcirculate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    :goto_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->ITEM_BG_INITIAL_COLOR:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewBgColor(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->ITEM_BG_INITIAL_COLOR:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewBgColor(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateIcon:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    sget v0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    return-void
.end method

.method private isToDragState(FFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private isToHoldState(FFF)Z
    .locals 5

    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsLandscape:Z

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v3, 0x3fd051eb851eb852L    # 0.255

    cmpg-double p1, p1, v3

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v3, 0x3fd73b645a1cac08L    # 0.363

    cmpg-double p1, p1, v3

    if-gez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0
.end method

.method private isUpdateViewDisplayOnDrag(FF)Z
    .locals 2

    iget-boolean p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportWorldcirculate:Z

    const/4 v0, 0x2

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenWidth:I

    int-to-float p2, p2

    div-float p2, p1, p2

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    iget p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    if-ne p2, v0, :cond_1

    :cond_0
    iget-boolean p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportMiniSmallWindow:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setViewBgColor(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mItemBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mItemBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private setViewTranslation(Landroid/view/View;FFZ)V
    .locals 4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    cmpl-float p2, p2, p3

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    sub-float p2, p3, p2

    iget p4, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContentTransY:I

    int-to-float p4, p4

    div-float/2addr p2, p4

    const/high16 p4, 0x437a0000    # 250.0f

    mul-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-long v0, p2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

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

.method private updateAppToWorldCirculateRectF()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mAppToWorldCirculateRectF:Landroid/graphics/RectF;

    const/high16 v3, 0x42480000    # 50.0f

    sub-float v4, v0, v3

    sub-float v5, v2, v3

    add-float/2addr v0, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v4, v5, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public enterDragState(FF)V
    .locals 0

    return-void
.end method

.method public enterHoldState(FF)Z
    .locals 2

    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_HOLD:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->isUpdateViewDisplayOnDrag(FF)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v0, "enterHoldState"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->initViewDisplayInDrag()V

    iget p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpg-float p1, p1, p2

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-gez p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportWorldcirculate:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateIcon:Landroid/view/View;

    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContentTransY:I

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    iget p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->WORLD_BG_IS_CHOSEN_COLOR:I

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewBgColor(Landroid/view/View;I)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportMiniSmallWindow:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContentTransY:I

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    iget p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->SMALL_BG_IS_CHOSEN_COLOR:I

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewBgColor(Landroid/view/View;I)V

    iput v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    :cond_3
    :goto_1
    sget p1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_HOLD:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    return v1
.end method

.method public enterShowState()V
    .locals 5

    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_SHOW:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "enterShowState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    :cond_0
    invoke-virtual {p0, p0, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->initViewDisplayInDrag()V

    sget v0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_SHOW:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    iput v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->updateAppToWorldCirculateRectF()V

    :cond_1
    return-void
.end method

.method public exitTopWindowCrop(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsInit:Z

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop$1;-><init>(Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setAlpha(F)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppToWorldCirculateRectF()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mAppToWorldCirculateRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWidth:I

    iget v2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mHeight:I

    const/16 v3, 0x7f6

    const v4, 0x4000238

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/high16 v0, 0x10000000

    invoke-static {v6, v0}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->addExtraFlag(Landroid/view/WindowManager$LayoutParams;I)V

    const/16 v0, 0x31

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v0, "home_worldCirculate_and_smallWindow_crop"

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method public initTopWindowCrop(ZIIZZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "initSmallWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsInit:Z

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    sget v1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsLandscape:Z

    iput p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenWidth:I

    iput p3, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportMiniSmallWindow:Z

    iput-boolean p5, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportWorldcirculate:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setAlpha(F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->onFinishInflate()V

    const v0, 0x7f0a0318

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    const v0, 0x7f0a0290

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    const v0, 0x7f0a0317

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    const v0, 0x7f0a0293

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateIcon:Landroid/view/View;

    const v0, 0x7f0a0292

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    const v0, 0x7f0a03ea

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mAppToWorldCirculateRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->updateConfiguration()V

    return-void
.end method

.method public resetTopWindowCrop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "resetSmallWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsInit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public startTopWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/systemui/shared/recents/utilities/WorldCirculate;->startWorldCirculate(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->startSmallWindow(Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateConfiguration()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080694

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0605af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1103dc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0806d9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1103e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070695

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWidth:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070690

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mHeight:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070692

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070691

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07068f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContentTransY:I

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070694

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070693

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateState(FFF)Z
    .locals 2

    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->enterShowState()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->isToHoldState(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->enterHoldState(FF)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->isToDragState(FFF)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->enterDragState(FF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->enterShowState()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method