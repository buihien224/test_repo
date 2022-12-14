.class public Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;
.super Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;
.source "CurrentIndexMediatorFoldImpl.java"


# instance fields
.field private final mCurrenRangeID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrenRangeIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;-><init>(Lcom/miui/home/launcher/Workspace;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeIndex:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeID:Ljava/util/List;

    return-void
.end method

.method private getCurrentScreenOrder(I)I
    .locals 4

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    iget-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private getPastScreenCount(II)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentScreenOrder(I)I

    move-result p1

    div-int v0, p1, p2

    rem-int/2addr p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sub-int/2addr v0, p1

    return v0
.end method

.method public static synthetic lambda$getCurrentRangeScreenID$0(Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;Ljava/lang/Integer;)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$notifyCurrentScreenShowingItem$1(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;

    invoke-interface {p0}, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;->onCurrentScreenShowing()V

    :cond_0
    return-void
.end method

.method private updateCurrentCellLayoutStatus(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->updateSingleCellLayoutStatus(IZI)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getAccessibilityItemCount()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getSingleCellLayoutAccessibilityCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getAllIndexesOnScreen(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getPastScreenCount(II)I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCurrentAllScreenID()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeScreenID(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAllScreenIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeIndex(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRangeIndex(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result v1

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeIndex:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeIndex:Ljava/util/List;

    return-object p1
.end method

.method public getCurrentRangeScreenID(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeID:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeIndex(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$qczZMp8fYJ6VlMUp1lZyFTMQi-A;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$qczZMp8fYJ6VlMUp1lZyFTMQi-A;-><init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeID:Ljava/util/List;

    return-object p1
.end method

.method public isInCurrentScreen(I)Z
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrentScreenIndex:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrentScreenIndex:I

    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyCurrentScreenShowingItem()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$MK8k7q76ceR3R2UCV5ZGpVlDZ7M;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$MK8k7q76ceR3R2UCV5ZGpVlDZ7M;

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->doForEachChildView(Landroid/view/ViewGroup;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->updateCurrentCellLayoutStatus(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->updateCurrentCellLayoutStatus(Z)V

    return-void
.end method

.method protected updateCellLayoutVisibility(I)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mPreScreenIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeIndex(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrentScreenIndex:I

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeIndex(I)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->updateSingleCellLayoutStatus(IZI)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->updateSingleCellLayoutStatus(IZI)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateIndex(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateIndex(IZ)V

    return-void
.end method

.method protected updateSingleGadgetLifeCycle(Lcom/miui/home/launcher/gadget/Gadget;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentAllScreenID()Ljava/util/List;

    move-result-object v1

    iget-wide v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mPreScreenIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeScreenID(I)Ljava/util/List;

    move-result-object v1

    iget-wide v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    return-void

    :cond_1
    return-void
.end method
