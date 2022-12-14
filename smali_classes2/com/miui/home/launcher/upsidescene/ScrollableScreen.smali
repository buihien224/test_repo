.class public Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "ScrollableScreen.java"

# interfaces
.implements Lcom/miui/home/launcher/DragScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;,
        Lcom/miui/home/launcher/upsidescene/ScrollableScreen$ScrollableScreenInterpolator;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mCurrentScreen:I

.field private mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

.field private mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mScreenCount:I

.field private mScrollZone:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->calcScreenScrollX(I)I

    move-result p0

    return p0
.end method

.method private calcScreenScrollX(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result v0

    mul-int/2addr v0, p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollRange()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getOverlapEdge()I

    move-result p1

    sub-int/2addr v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method private getOverlapEdge()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getScrollRange()I
    .locals 3

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method private handleActionUp()V
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapByVelocity(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->recycleVelocityTracker()V

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->recycle()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    :cond_0
    return-void
.end method

.method private setCurrentScreenInner(I)V
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    return-void
.end method

.method private snapByVelocity(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mMaximumVelocity:I

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->getXVelocity(III)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    if-lez v2, :cond_0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result v0

    div-int/2addr p1, v2

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    int-to-float p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditModeScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int v0, p1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result p1

    div-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method checkIsBeginDrag(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mTouchSlop:I

    if-le v2, v3, :cond_3

    iput-boolean v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    return-void
.end method

.method public computeScroll()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setScrollX(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->postInvalidate()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setCurrentScreenInner(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected finishCurrentGesture()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    return-void
.end method

.method public getChildWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getScreenData()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getWidth()I

    move-result v0

    return v0
.end method

.method public getCurrentScreen()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    return v0
.end method

.method public getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    return-object v0
.end method

.method public getScreenCount()I
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getScreenData()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getFreeStyle()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getScreenData()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getFreeStyle()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getWidth()I

    move-result v1

    rem-int/2addr v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getScreenData()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getScrollZone()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScrollZone:I

    return v0
.end method

.method public isBeingDragged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    return v0
.end method

.method public notifyGadgets(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->notifyGadgets(I)V

    return-void
.end method

.method public onEnterScrollArea(IIILandroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onExitScrollArea()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0173

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/FreeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$ScrollableScreenInterpolator;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$ScrollableScreenInterpolator;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mMaximumVelocity:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScrollZone:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->checkIsBeginDrag(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    iput-boolean v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->initOrResetVelocityTracker()V

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    :goto_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isCurrentGestureFinished()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->onScrollChanged(IIII)V

    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->notifyScrollableScreenScrolling()V

    return-void
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->initVelocityTrackerIfNotExists()V

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->init(I)V

    iget-object p2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    float-to-int p2, p2

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    int-to-float p2, p2

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput p2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result p2

    add-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->scrollTo(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->awakenScrollBars()Z

    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapByVelocity(I)V

    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isCurrentGestureFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->checkIsBeginDrag(Landroid/view/MotionEvent;)V

    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iget-boolean v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-eqz v2, :cond_5

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setScrollX(I)V

    goto :goto_0

    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->handleActionUp()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    new-instance v0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$2;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->handleActionUp()V

    :cond_5
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public scrollDragingLeft()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollDragingRight()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollRange()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollRange()I

    move-result p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;->scrollTo(II)V

    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->calcScreenScrollX(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setScrollX(I)V

    return-void
.end method

.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method

.method public setScreenData(Lcom/miui/home/launcher/upsidescene/data/Screen;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->setScreenData(Lcom/miui/home/launcher/upsidescene/data/Screen;)V

    new-instance v0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;Lcom/miui/home/launcher/upsidescene/data/Screen;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public snapToScreen(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(II)V

    return-void
.end method

.method public snapToScreen(II)V
    .locals 9

    const/4 v0, 0x1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    :goto_0
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->calcScreenScrollX(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result v2

    sub-int v6, v1, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x12c

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result v3

    div-int/2addr v1, v3

    if-lez p2, :cond_3

    int-to-float v3, v1

    int-to-float p2, p2

    const v4, 0x451c4000    # 2500.0f

    div-float/2addr p2, v4

    div-float/2addr v3, p2

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, p2

    float-to-int p2, v3

    add-int/2addr v1, p2

    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gt p1, v0, :cond_4

    const/16 p1, 0x258

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v8, p1

    goto :goto_1

    :cond_4
    move v8, p2

    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->invalidate()V

    return-void
.end method
