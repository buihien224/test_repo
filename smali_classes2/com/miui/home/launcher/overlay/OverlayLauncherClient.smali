.class public Lcom/miui/home/launcher/overlay/OverlayLauncherClient;
.super Lcom/miui/launcher/overlay/client/LauncherClient;
.source "OverlayLauncherClient.java"


# instance fields
.field protected mHasTryReconnect:Z

.field protected mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field protected mWasOverlayAttached:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/overlay/client/LauncherClient;-><init>(Landroid/app/Activity;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mWasOverlayAttached:Z

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected isEnable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->getOptions()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onServiceDisconnected()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mHasTryReconnect:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mHasTryReconnect:Z

    new-instance v0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient$1;-><init>(Lcom/miui/home/launcher/overlay/OverlayLauncherClient;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected final onServiceStateChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mWasOverlayAttached:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mWasOverlayAttached:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->onServiceDisconnected()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mHasTryReconnect:Z

    return-void
.end method

.method public setClientOptions(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->setClientOptions(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->reconnect()V

    :cond_0
    return-void
.end method
