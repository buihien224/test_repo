.class public Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;
.source "UserPresentAnimationCompatV12Fold.java"


# instance fields
.field private mIsNormalToFold:Z

.field private mPreparedNextScreenId:J

.field private mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mIsNormalToFold:Z

    return-void
.end method

.method private clearPrepareLockAnim()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->isPreparedAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetSearchBar()V

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetSeekBar()V

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetHotsets()V

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetCellLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetAnimationViewNum()V

    return-void
.end method

.method private getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method private getNextScreenIndex()I
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/miui/home/launcher/Workspace;->calibrateFoldCurrentScreenIndex(IZ)I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-eq v1, v0, :cond_1

    iget-boolean v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mIsNormalToFold:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->canBeDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->isChildrenLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getMeasuredHeight()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/common/ScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/ScreenMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/ScreenMode;->NORMAL:Lcom/miui/home/launcher/common/ScreenMode;

    :goto_0
    return-object v0
.end method

.method private prepareNextScreen()V
    .locals 4

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->getNextScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPrepareConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    const-string v0, "UserPresentAnimationCompatV12Fold"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareNextScreen ,mPreparedNextScreenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private resetCellLayout()V
    .locals 6

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    :cond_1
    return-void
.end method

.method private resetHotsets()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetView(Landroid/view/View;)V

    return-void
.end method

.method private resetSearchBar()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetView(Landroid/view/View;)V

    return-void
.end method

.method private resetSeekBar()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetView(Landroid/view/View;)V

    return-void
.end method

.method private shouldShowAnim()Z
    .locals 7

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_1

    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private shouldShowLockAnim(J)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentAllScreenID()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private showCurrentScreen()V
    .locals 6

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->shouldShowLockAnim(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UserPresentAnimationCompatV12Fold"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showCurrentScreen ,mPreparedScreenId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mShowConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_0

    :cond_0
    const-string v0, "UserPresentAnimationCompatV12Fold"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showCurrentScreen ,mPreparedScreenId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mResetConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    :goto_0
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    :cond_1
    return-void
.end method

.method private showNextScreen()V
    .locals 6

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->shouldShowLockAnim(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UserPresentAnimationCompatV12Fold"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showNextScreen ,mPreparedNextScreenId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mShowConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mResetConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    :goto_0
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    :cond_1
    return-void
.end method

.method private updatePivot()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/Workspace;->calibrateFoldCurrentScreenIndex(IZ)I

    move-result v1

    const/high16 v3, 0x40200000    # 2.5f

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ge v1, v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mIsNormalToFold:Z

    if-eqz v0, :cond_0

    new-array v0, v5, [I

    aput v2, v0, v2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v4

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPivot:[I

    goto :goto_0

    :cond_0
    new-array v0, v5, [I

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v1, v5

    aput v1, v0, v2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v4

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPivot:[I

    :goto_0
    const-string v0, "UserPresentAnimationCompatV12Fold"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePivot, current mPivotX = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPivot:[I

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkMissingIcon()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->isPreparedAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;->checkMissingIcon()V

    :cond_0
    return-void
.end method

.method public bridge synthetic endAnimation(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;->endAnimation(Landroid/view/View;)V

    return-void
.end method

.method public isPreparedAnimation()Z
    .locals 4

    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;->isPreparedAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mAllAnimationViewNum:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;",
            "Lcom/miui/home/launcher/CellLayout;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method protected operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;",
            "Lcom/miui/home/launcher/CellLayout;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public prepareAnimation()V
    .locals 4

    const-string v0, "UserPresentAnimationCompatV12Fold"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAnimation, mPreparedScreenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , mPreparedNextScreenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    if-eq v0, v1, :cond_0

    const-string v1, "UserPresentAnimationCompatV12Fold"

    const-string v2, "ScrenMode update , so clear prepared animation ! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->clearPrepareLockAnim()V

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mIsNormalToFold:Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->updatePivot()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->prepareCurrentScreen()V

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->prepareNextScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mIsNormalToFold:Z

    return-void
.end method

.method public prepareCurrentScreen()V
    .locals 4

    const-string v0, "UserPresentAnimationCompatV12Fold"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " numOfAnimatedView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mAllAnimationViewNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const v0, 0x7fffffff

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mMinDelay:I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->canBeDeleted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isChildrenLaidOut()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetAnimationViewNum()V

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPrepareConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    const-string v0, "UserPresentAnimationCompatV12Fold"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAnimation ,mPreparedScreenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public resetAnimation()V
    .locals 4

    const-string v0, "UserPresentAnimationCompatV12Fold"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetAnimation, mPreparedScreenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , mPreparedNextScreenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->clearPrepareLockAnim()V

    return-void
.end method

.method public showAnimation()V
    .locals 2

    const-string v0, "UserPresentAnimationCompatV12Fold"

    const-string v1, "showAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->shouldShowAnim()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UserPresentAnimationCompatV12Fold"

    const-string v1, "Should not show lock animation , so clear prepared animation !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->clearPrepareLockAnim()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->showNextScreen()V

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->showCurrentScreen()V

    return-void
.end method
