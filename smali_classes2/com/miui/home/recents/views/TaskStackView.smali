.class public Lcom/miui/home/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;
.implements Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;",
        "Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer<",
        "Lcom/miui/home/recents/views/TaskView;",
        "Lcom/android/systemui/shared/recents/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field private mAwaitingFirstLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

.field private mDeleteAllTasksAnimating:Z

.field private mDisplayRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mEnterAnimationComplete:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mIgnoreTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field

.field private mInMeasureLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsHardwareLayerThumbnailView:Z

.field private mIsShowingMenu:Z

.field mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation
.end field

.field private mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

.field private mStableWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

.field private mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "scroller_"
    .end annotation
.end field

.field private mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpTaskViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mViewPool:Lcom/miui/home/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/views/ViewPool<",
            "Lcom/miui/home/recents/views/TaskView;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualRotationSystemInsets:Landroid/graphics/Rect;

.field private mWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsShowingMenu:Z

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2, p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;)V

    new-instance v2, Lcom/miui/home/recents/views/ViewPool;

    invoke-direct {v2, p1, p0}, Lcom/miui/home/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutStyle()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setImportantForAccessibility(I)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskStackView;->setClipChildren(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/TaskStackView;)Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/recents/views/TaskStackView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    return p1
.end method

.method private bindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/recents/views/TaskView;->bindTask(Lcom/android/systemui/shared/recents/model/Task;Z)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;FF)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p3, p4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/miui/home/recents/util/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-virtual {v3, v2, p3, v4}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    move-result-object v3

    if-eqz v1, :cond_1

    iget-boolean v4, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    new-instance v5, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v5}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {v4, v2, p4, v5}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    move-result-object v2

    iget-boolean v4, v2, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/views/TaskViewTransform;->copyFrom(Lcom/miui/home/recents/views/TaskViewTransform;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private findTaskViewInsertIndex(Lcom/android/systemui/shared/recents/model/Task;I)I
    .locals 8

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v5, p1, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v7, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v5

    if-ge p2, v5, :cond_2

    if-eqz v4, :cond_1

    sub-int/2addr v3, v6

    return v3

    :cond_1
    return v3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private isLandscapeConsiderKeptPortrait()Z
    .locals 2

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSnappingChild()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isSnappingChild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTaskViewVisible(ILjava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)Z"
        }
    .end annotation

    if-ltz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/TaskViewTransform;

    iget-boolean p0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private layoutTaskView(ZLcom/miui/home/recents/views/TaskView;)V
    .locals 4

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/miui/home/recents/views/TaskView;->layout(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result p1

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v0

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v1

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/miui/home/recents/views/TaskView;->layout(IIII)V

    :goto_0
    return-void
.end method

.method private measureTaskView(Lcom/miui/home/recents/views/TaskView;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/views/TaskView;->measure(II)V

    return-void
.end method

.method private recalculateVisibleTaskView(Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v5

    invoke-static {v5, p1}, Lcom/miui/home/recents/views/TaskStackView;->isTaskViewVisible(ILjava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v4, v3}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private resetSnappingChild()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->resetIsSnappingChild()V

    :cond_0
    return-void
.end method

.method private scrollTaskStackViewToPosition(I)F
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskView(I)F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    return p1
.end method

.method private unbindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private updateLayoutStyle()V
    .locals 3

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->createTaskStackViewScroller(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;)Lcom/miui/home/recents/views/TaskStackViewScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskStackViewScroller;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStableLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getScrollDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->setScrollDirection(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getSwipeDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->setSwipeDirection(I)V

    return-void
.end method


# virtual methods
.method addIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method bindVisibleTaskViews(F)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/miui/home/recents/views/TaskStackView;->computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FF)V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->modifyTransformVisible(Ljava/util/ArrayList;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->recalculateVisibleTaskView(Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskViewTransform;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v6, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, v4, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v5, v3, v3}, Lcom/miui/home/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v5, v4, v3}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v6}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->getOldStackScroll()F

    move-result v6

    invoke-virtual {v4, v1, v6, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V

    iput-boolean v2, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    sget-object v4, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v5, v3, v4}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/miui/home/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/shared/recents/model/Task;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_7

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-ne v5, v4, :cond_6

    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/TaskStackView;->clearChildFocus(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v5, v3, v4}, Lcom/miui/home/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewsList()V

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method cancelDeferredTaskViewLayoutAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    return-void
.end method

.method public changeTaskStackViewScrollAndTaskViewTranslation(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->translationTaskViewsToScroll0(Lcom/miui/home/recents/views/TaskStackView;F)V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->computeScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    :cond_1
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/StackScrollChangedEvent;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v2}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->isSmallWindowTextAndMemoryTextTranslationWhenScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Lcom/miui/home/recents/messages/StackScrollChangedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public createView(Landroid/content/Context;)Lcom/miui/home/recents/views/TaskView;
    .locals 2

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0162

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    return-object p1
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-static {v3}, Lcom/miui/home/recents/util/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/miui/home/recents/util/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskViewTransform;->fillIn(Lcom/miui/home/recents/views/TaskView;)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    :goto_1
    iput-boolean v1, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getFrontMostTaskView(Z)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLayoutTaskTransforms(FLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/miui/home/recents/util/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskViewTransform;

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v4, v2, p1, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    iput-boolean v1, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getScrollForTaskView(I)F
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskView(I)F

    move-result p1

    return p1
.end method

.method public getStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method public getStackIndexFromTaskId(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p1

    return p1
.end method

.method public getStackIndexFromTaskViewIndex(I)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result p1

    return p1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getTaskIdFromStackIndex(I)I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, -0x1

    if-ltz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    return-object v0
.end method

.method public getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;F)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getTaskViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getTouchHandler()Lcom/miui/home/recents/views/TaskStackViewTouchHandler;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    return-object v0
.end method

.method public hasPreferredData(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->hasPreferredData(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    return p1
.end method

.method public initLayoutAlgorithm(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->isLandscapeConsiderKeptPortrait()Z

    move-result v2

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->isNeedRotate(Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/util/ArraySet;)V

    :cond_2
    return-void
.end method

.method public isDeleteAllTasksAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    return v0
.end method

.method isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isShowingMenu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsShowingMenu:Z

    return v0
.end method

.method public isTaskStackViewLayoutStyleVertical()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStyleValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchPointInView(FFLcom/miui/home/recents/views/TaskView;)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v2

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v3

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getIgnoreTranslationWhenFindTouchView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTranslationY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->onDarkModeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onExitState()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->resetSnappingChild()V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setAllThumbnailViewHardware(Z)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v0, v0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v2, 0x2000

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-boolean p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    if-nez p2, :cond_4

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->isSnappingChild()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {p3}, Lcom/miui/home/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_1

    iget-object p5, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0, p1, p5}, Lcom/miui/home/recents/views/TaskStackView;->layoutTaskView(ZLcom/miui/home/recents/views/TaskView;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->boundScroll()Z

    :cond_2
    sget-object p1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    iget-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz p1, :cond_3

    iput-boolean p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0, v3}, Lcom/miui/home/recents/views/TaskStackView;->measureTaskView(Lcom/miui/home/recents/views/TaskView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->setMeasuredDimension(II)V

    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/DismissAllTaskViewsEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;

    invoke-direct {v4, v2, v1}, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Z)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string p1, "TaskStackView"

    const-string v0, "removeAllTask, cleanByRecents=true"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performClearAllRecentTasks()V

    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    new-instance p1, Lcom/miui/home/recents/views/TaskStackView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/TaskStackView$1;-><init>(Lcom/miui/home/recents/views/TaskStackView;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->dismissTaskViewAnim(Lcom/miui/home/recents/views/TaskStackView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/TaskStackViewLayoutStyleChangeEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutStyle()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/TaskViewDismissedEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f11002b

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v1, p1, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, p1, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->animation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;

    iget-object p1, p1, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v1, p1}, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPickUpViewFromPool(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/miui/home/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/shared/recents/model/Task;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/miui/home/recents/views/TaskStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->measureTaskView(Lcom/miui/home/recents/views/TaskView;)V

    invoke-direct {p0, v1, p1}, Lcom/miui/home/recents/views/TaskStackView;->layoutTaskView(ZLcom/miui/home/recents/views/TaskView;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/home/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->registerEventBus()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewsList()V

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->resetViewProperties()V

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->bindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskView;->setTouchEnabled(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->setImportantForAccessibility(I)V

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    iget-boolean p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    if-eqz p3, :cond_3

    const/4 p2, 0x2

    :cond_3
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public bridge synthetic onPickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/views/TaskStackView;->onPickUpViewFromPool(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Z)V

    return-void
.end method

.method onReload(Z)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3, p1}, Lcom/miui/home/recents/views/TaskView;->onReload(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->reset()V

    :cond_1
    iput-boolean v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    return-void
.end method

.method public onReturnViewToPool(Lcom/miui/home/recents/views/TaskView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->unbindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->resetViewProperties()V

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->clearChildFocus(Landroid/view/View;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TaskStackView"

    const-string v2, "onReturnViewToPool error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->unregisterEventBus()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewsList()V

    return-void
.end method

.method public bridge synthetic onReturnViewToPool(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->onReturnViewToPool(Lcom/miui/home/recents/views/TaskView;)V

    return-void
.end method

.method public onScrollStart()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setAllThumbnailViewHardware(Z)V

    return-void
.end method

.method public onStackScrollChanged(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_0
    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    iget-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/16 p2, 0xc8

    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v0, p2}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    invoke-virtual {p0, p3}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p2

    if-nez p2, :cond_2

    if-eqz p4, :cond_2

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;

    const p4, 0x7f1103d7

    const/4 v0, 0x0

    invoke-direct {p3, p4, p1, v0}, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;-><init>(IZZ)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;

    const v3, 0x7f1103d7

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p1

    if-nez p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-direct {v1, v3, p1, v2}, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;-><init>(IZZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 4

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->bindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p2

    if-ltz p2, :cond_3

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-ge p2, v1, :cond_3

    const/16 p2, 0x1000

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskViewTransform;

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v5, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method relayoutTaskViewsOnNextFrame(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->invalidate()V

    return-void
.end method

.method removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public returnTaskViewsToPool()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollToDefaultCenterTaskViewIndex()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDefaultCenterTaskViewIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->scrollTaskStackViewToPosition(I)F

    return-void
.end method

.method public scrollToNearestMotionlessPosition()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->scrollToNearestMotionlessPosition()V

    return-void
.end method

.method public setAllThumbnailViewHardware(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setIsShowingMenu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsShowingMenu:Z

    return-void
.end method

.method public setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isInitialized()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public setVisualRotationSystemInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateInsetsForLayoutAlgorithm(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isAddToLauncher(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopScroll()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    return-void
.end method

.method public updateInsetsForLayoutAlgorithm(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateLayoutAlgorithm(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/util/ArraySet;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->boundScroll()Z

    :cond_0
    return-void
.end method

.method public updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->isAnimatingTo(Lcom/miui/home/recents/views/TaskViewTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    return-void
.end method

.method updateTaskViewsList()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/miui/home/recents/views/TaskView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
