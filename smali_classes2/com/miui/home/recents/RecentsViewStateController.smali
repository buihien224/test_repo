.class public Lcom/miui/home/recents/RecentsViewStateController;
.super Ljava/lang/Object;
.source "RecentsViewStateController.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;


# instance fields
.field mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNeedPerformEndRunnable:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    iput-object p1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/RecentsViewStateController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    return p0
.end method


# virtual methods
.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 8

    if-eqz p1, :cond_4

    const-string v0, "RecentsViewStateController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/RecentsView;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p1, v3, :cond_2

    iget-boolean v3, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v6, 0x258

    invoke-static {v3, v2, v6, v7}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    :cond_0
    iget-boolean v3, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    invoke-virtual {v0, v5}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    invoke-virtual {v0, v5}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    invoke-virtual {v1, v5}, Lcom/miui/home/recents/views/RecentsView;->setAlpha(F)V

    invoke-virtual {v1, v5}, Lcom/miui/home/recents/views/RecentsView;->setScaleX(F)V

    invoke-virtual {v1, v5}, Lcom/miui/home/recents/views/RecentsView;->setScaleY(F)V

    invoke-virtual {v1, v4}, Lcom/miui/home/recents/views/RecentsView;->setTranslationY(F)V

    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenEnterRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-static {v3, v6}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;Z)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    const-string v3, "RecentsViewStateController"

    const-string v6, "set RecentsContainer GONE when setState without animation"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v6, v5}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    invoke-virtual {v6, v4}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    invoke-virtual {v6, v4}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p1, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenExitRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeOutAnim(JJ)V

    :goto_2
    return-void

    :cond_4
    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 5

    if-eqz p1, :cond_7

    const-string p2, "RecentsViewStateController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setState: state="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   mIsIgnoreOverviewAnim="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/views/RecentsView;

    iget-object p3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p3

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-wide v3, Lcom/miui/home/launcher/common/BlurUtils;->DEFAULT_BLUR_ANIM_DURATION:J

    invoke-static {v0, v2, v3, v4}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    :cond_0
    iput-boolean v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    invoke-virtual {p3, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/RecentsView;->setAlpha(F)V

    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/RecentsView;->setScaleX(F)V

    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/RecentsView;->setScaleY(F)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/miui/home/recents/views/RecentsView;->setTranslationY(F)V

    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2, p1, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenEnterRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;Z)V

    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    if-nez v0, :cond_5

    iput-boolean v1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsExitRecentsAnimating(Z)V

    new-instance v0, Lcom/miui/home/recents/RecentsViewStateController$1;

    invoke-direct {v0, p0, p3}, Lcom/miui/home/recents/RecentsViewStateController$1;-><init>(Lcom/miui/home/recents/RecentsViewStateController;Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {p3}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentMenuView()Lcom/miui/home/recents/views/RecentMenuView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    iget-object v3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsContainer;->isOneKeyCleanAnimating()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToHomeAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z

    move-result v2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToHomeAnimSlideToLeft(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z

    move-result v2

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    iget-object p2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2, p1, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenExitRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V

    const-wide/16 p1, 0xfa

    const-wide/16 v0, 0x0

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeOutAnim(JJ)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    return-void
.end method
