.class public Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;
.super Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
.source "TaskStackViewsAlgorithmVertical.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mPaddingRatio:F

.field private mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

.field private mVerticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method private calculateTaskWidthPercentNew(F)F
    .locals 2

    const v0, -0x404669ad    # -1.4499f

    mul-float/2addr v0, p1

    const v1, 0x3f7ff972    # 0.9999f

    add-float/2addr v0, v1

    const v1, 0x3f3ff972    # 0.7499f

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getPreloadHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method


# virtual methods
.method protected afterFrictionValue(FF)F
    .locals 3

    div-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float v0, p1, p1

    mul-float v1, v0, p1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    add-float/2addr v1, p1

    mul-float/2addr v1, p2

    return v1
.end method

.method protected calculateGap(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    mul-float/2addr p2, v2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:F

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    mul-float/2addr p2, v2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:F

    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide p1, 0x3fe999999999999aL    # 0.8

    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentsTaskViewHeaderHeight:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    invoke-interface {p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;->getVerticalGapFraction()F

    move-result p1

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentsTaskViewHeaderHeight:I

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    :goto_1
    return-void
.end method

.method protected calculateMaxScrollP()F
    .locals 2

    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mNumStackTasks:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object v0

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method protected calculateMinScrollP()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public calculatePer(FF)F
    .locals 0

    neg-float p1, p1

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method protected calculateStackScroll([I[I)F
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    aget p2, p2, v1

    aget p1, p1, v1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p1, p2

    return p1
.end method

.method public calculateTaskRadius(FF)F
    .locals 0

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    return p1
.end method

.method public calculateTaskRatio(FFFZ)F
    .locals 0

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x3f99999a    # 1.2f

    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->getPercentsValue(FFF)F

    move-result p1

    return p1

    :cond_0
    return p1
.end method

.method protected calculateTaskViewOffsetXAndY(I)[I
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:F

    iget v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    :goto_0
    const/4 v3, 0x0

    move v6, v2

    move v2, v1

    move v1, v3

    :goto_1
    if-ge v1, p1, :cond_4

    if-nez v1, :cond_2

    iget-boolean v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mIsRtlLayout:Z

    if-nez v7, :cond_1

    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mFirstTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v2, v7

    goto :goto_2

    :cond_1
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mFirstTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_2

    :cond_2
    if-le v2, v6, :cond_3

    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_2

    :cond_3
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v2, v7

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    if-gt v2, v6, :cond_6

    iget-boolean v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mIsRtlLayout:Z

    if-eqz v7, :cond_5

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    aput v4, v0, v3

    iget p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    sub-int/2addr v2, p1

    aput v2, v0, v1

    goto :goto_4

    :cond_6
    :goto_3
    aput v5, v0, v3

    iget p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v6, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    sub-int/2addr v6, p1

    aput v6, v0, v1

    :goto_4
    return-object v0
.end method

.method public calculateTaskWidthNew(FF)F
    .locals 0

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->calculateTaskWidthPercentNew(F)F

    move-result p2

    mul-float/2addr p1, p2

    return p1
.end method

.method public calculateTaskX(FFFF)F
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isUseDistanceForTaskX()Z

    move-result v0

    if-eqz v0, :cond_0

    sub-float/2addr p2, p1

    return p2

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_1

    div-float/2addr p1, p3

    mul-float/2addr p4, p1

    sub-float/2addr p2, p4

    return p2

    :cond_1
    return v0
.end method

.method public calculateTaskY(FFFFF)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpg-float p2, p5, p1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p5, p1

    invoke-virtual {p0, p5, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->afterFrictionValue(FF)F

    move-result p2

    add-float p5, p2, p1

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p5

    mul-float/2addr p1, p3

    sub-float/2addr p1, p4

    return p1
.end method

.method protected computeTaskStackViewPadding(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;->getTopRatio(ZI)F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    invoke-interface {v1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;->getBottomRatio()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    const/4 v2, 0x2

    if-gt p1, v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    :goto_0
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getDefaultCenterTaskViewIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTargetTaskViewIndex(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    const/4 p1, 0x0

    iget p3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mNumStackTasks:I

    add-int/lit8 p3, p3, -0x1

    invoke-static {p2, p1, p3}, Lcom/miui/home/recents/util/Utilities;->clamp(III)I

    move-result p1

    return p1
.end method

.method public getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p3, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    :goto_0
    iput v0, p3, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    iput v1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    iput v1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget-object v0, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mNumStackTasks:I

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mFirstTaskRectF:Landroid/graphics/RectF;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object p1

    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mNumStackTasks:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    aget v0, p1, v2

    :goto_2
    aput v0, p1, v2

    aget v0, p1, v1

    int-to-float v0, v0

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr p2, v3

    sub-float/2addr v0, p2

    float-to-int p2, v0

    aput p2, p1, v1

    iget-object p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    aget v0, p1, v2

    int-to-float v0, v0

    aget p1, p1, v1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->getPreloadHeight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->getPreloadHeight()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    return-void
.end method

.method public initRecentLayoutConfig()V
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutWhenLandscapeConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutWhenLandscapeConfig;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutConfig;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutWhenLandscapeConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutWhenLandscapeConfig;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutConfig;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getTaskViewPaddingRatio(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    return-void
.end method

.method protected scaleTaskView(Landroid/graphics/RectF;)V
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getTaskViewScale(Landroid/content/Context;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    return-void
.end method
