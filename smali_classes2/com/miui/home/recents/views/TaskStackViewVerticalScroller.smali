.class public Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;
.super Lcom/miui/home/recents/views/TaskStackViewScroller;
.source "TaskStackViewVerticalScroller.java"


# instance fields
.field private mExitRecentVelocityThreshold:I

.field private mFlingDownY:F

.field private mScroller:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V

    const/16 p2, 0x4b0

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mExitRecentVelocityThreshold:I

    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mScroller:Landroid/widget/OverScroller;

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mExitRecentVelocityThreshold:I

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mExitRecentVelocityThreshold:I

    return-void
.end method


# virtual methods
.method animateBoundScroll(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->getBoundedStackScroll(F)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    const v2, -0x41b33333    # -0.2f

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mExitRecentVelocityThreshold:I

    if-le p1, v2, :cond_0

    float-to-double v2, v0

    const-wide v4, -0x405147ae0ccccccdL    # -0.06000000089406967

    cmpg-double p1, v2, v4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->animateScroll(FLjava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "dropDown"

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/HideRecentsEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2, v1}, Lcom/miui/home/recents/messages/HideRecentsEvent;-><init>(ZZZZ)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method computeScroll()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mFlingDownY:F

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForY(FF)F

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mFlingDownScrollP:F

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->setDeltaStackScroll(FF)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fling(FFFIIIIIIIII)V
    .locals 12

    move-object v0, p0

    move v1, p1

    iput v1, v0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mFlingDownScrollP:F

    move v1, p3

    iput v1, v0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mFlingDownY:F

    iget-object v1, v0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mScroller:Landroid/widget/OverScroller;

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p12

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public getNearestMotionlessScrollP(F)F
    .locals 0

    return p1
.end method

.method public scrollToNearestMotionlessPosition()V
    .locals 0

    return-void
.end method

.method stopScroller()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_0
    return-void
.end method
