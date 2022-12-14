.class public Lcom/miui/home/recents/RecentsAnimationListenerImpl;
.super Ljava/lang/Object;
.source "RecentsAnimationListenerImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;
    }
.end annotation


# instance fields
.field private mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

.field private mFinishCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mFinishControllerRunnable:Ljava/lang/Runnable;

.field mHomeContentInsets:Landroid/graphics/Rect;

.field mInimizedHomeBounds:Landroid/graphics/Rect;

.field public mIsStart:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private mWindowThresholdCrossed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Ljava/util/List;

    return-void
.end method

.method private finishController(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    const-string v0, "RecentsAnimationListenerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish, toRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sendUserLeaveHint="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    return-void
.end method

.method private hasPendingFinishRunnable()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$enableInputConsumer$4(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$finishController$0(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$finishController$1(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZZ)V

    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p2, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$td0seiMGmc-W4NrKY2DuEwPEWwI;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$td0seiMGmc-W4NrKY2DuEwPEWwI;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$finishControllerAsync$2(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZZ)V

    return-void
.end method

.method public static synthetic lambda$setWindowThresholdCrossed$3(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setAnimationTargetsBehindSystemBars(Z)V

    :cond_0
    return-void
.end method

.method private printStartRecentsAnimLog()V
    .locals 3

    const-string v0, "RecentsAnimationListenerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStart, homeContentInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mHomeContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", minimizedHomeBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->printAllUnfilteredRemoteAnimationTarget()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enableInputConsumer()V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$sTZwn6ul5Yg-tf905qc2Kosksbg;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$sTZwn6ul5Yg-tf905qc2Kosksbg;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public findRemoteAnimationTargetCompat(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    return-object p1
.end method

.method public finishController(ZLjava/lang/Runnable;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hasPendingFinishRunnable()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p2}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance p2, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$5tFF9vF1pk3Lr5zQLuSTlaOzEi0;

    invoke-direct {p2, p0, p1, p3}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$5tFF9vF1pk3Lr5zQLuSTlaOzEi0;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V

    iput-object p2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object p2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishControllerAsync(ZZ)V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$eQQ-AYMw-7keDOoUtT6lhyK4yE8;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$eQQ-AYMw-7keDOoUtT6lhyK4yE8;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishControllerDirectly(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZZ)V

    return-void
.end method

.method public finishPendingController()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hasPendingFinishRunnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-object v0
.end method

.method public hideCurrentInputMethod()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->hideCurrentInputMethod()V

    :cond_0
    return-void
.end method

.method public onAnimationCanceled(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    invoke-interface {v1, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onRecentsAnimationCanceled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    iput-object p3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mHomeContentInsets:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->printStartRecentsAnimLog()V

    iget-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    invoke-interface {p2, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onRecentsAnimationStart(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    invoke-interface {v1, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public setIsStart(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    const-string p1, "RecentsAnimationListenerImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWindowThresholdCrossed(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$7VpIcQMzZv8U8Mp-_wQP4IY7PuU;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$7VpIcQMzZv8U8Mp-_wQP4IY7PuU;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
