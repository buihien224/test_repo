.class public Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;
.super Lcom/miui/home/launcher/overlay/OverlayLauncherClient;
.source "FeedLauncherClient.java"


# instance fields
.field protected isShowOverlayWhenConnected:Z

.field private keepFeedAlive:Z

.field private mUserLevel:I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mUserLevel:I

    iput-boolean p2, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->keepFeedAlive:Z

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isEnable()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;-><init>(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)I
    .locals 0

    iget p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mUserLevel:I

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;I)I
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mUserLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->keepFeedAlive:Z

    return p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->keepFeedAlive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isEnable()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->keepFeedAlive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mHasTryReconnect:Z

    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->disconnect()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->onDestroy()V

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;->getDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isShowOverlayWhenConnected:Z

    iget p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mUserLevel:I

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->keepFeedAlive:Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->reconnect()V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "com.miui.newhome"

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->reconnect()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->onStart()V

    new-instance v0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;-><init>(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isShowOverlayWhenConnected:Z

    return-void
.end method

.method public setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isShowOverlayWhenConnected:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->canSlidingUp(Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->showOverlay(I)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isShowOverlayWhenConnected:Z

    return-void
.end method
