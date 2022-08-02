.class Lcom/miui/launcher/overlay/client/LauncherClientService;
.super Ljava/lang/Object;
.source "LauncherClientService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherClient.Service"

.field private static final sInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/overlay/client/LauncherClientService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mFlags:I

.field private mLauncherClientRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/launcher/overlay/client/LauncherClient;",
            ">;"
        }
    .end annotation
.end field

.field public mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

.field private final mPackageName:Ljava/lang/String;

.field private mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/miui/launcher/overlay/client/LauncherClientService;->sInstanceMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mPackageName:Ljava/lang/String;

    const/16 p1, 0x41

    iput p1, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mFlags:I

    return-void
.end method

.method private cleanUp()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mStopped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->disconnect()V

    :cond_0
    return-void
.end method

.method private getClient()Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 1

    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mLauncherClientRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/launcher/overlay/client/LauncherClient;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static declared-synchronized getService(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/launcher/overlay/client/LauncherClientService;
    .locals 2

    const-class v0, Lcom/miui/launcher/overlay/client/LauncherClientService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/launcher/overlay/client/LauncherClientService;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/launcher/overlay/client/LauncherClientService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/launcher/overlay/client/LauncherClientService;

    invoke-direct {v1, p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClientService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->getClient()Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    invoke-virtual {p1, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mLauncherClientRef:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p1, :cond_0

    const-string p1, "LauncherClient.Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reuse service connection success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connect()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mFlags:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mConnected:Z

    const-string v0, "LauncherClient.Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind service :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "LauncherClient.Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service already connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mConnected:Z

    const-string v0, "LauncherClient.Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "LauncherClient.Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service already disconnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "LauncherClient.Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "LauncherClient.Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNullBinding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "LauncherClient.Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClientService;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "LauncherClient.Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClientService;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->cleanUp()V

    return-void
.end method

.method public final setStopped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mStopped:Z

    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->cleanUp()V

    return-void
.end method

.method declared-synchronized unbindClient(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->getClient()Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mLauncherClientRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->disconnect()V

    sget-object p1, Lcom/miui/launcher/overlay/client/LauncherClientService;->sInstanceMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/miui/launcher/overlay/client/LauncherClientService;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
