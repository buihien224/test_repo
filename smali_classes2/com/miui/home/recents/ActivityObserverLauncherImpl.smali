.class public Lcom/miui/home/recents/ActivityObserverLauncherImpl;
.super Ljava/lang/Object;
.source "ActivityObserverLauncherImpl.java"

# interfaces
.implements Lcom/miui/home/recents/ActivityObserverLauncher;
.implements Ljava/lang/Runnable;


# static fields
.field private static instance:Lcom/miui/home/recents/ActivityObserverLauncherImpl;


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private final mMiuiActivityObserver:Landroid/app/IMiuiActivityObserver;

.field private mTopActivity:Landroid/content/ComponentName;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mCallbacks:Ljava/util/List;

    new-instance v0, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl$1;-><init>(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)V

    iput-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mMiuiActivityObserver:Landroid/app/IMiuiActivityObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "activity_observer_thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/ActivityObserverLauncherImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/recents/ActivityObserverLauncherImpl;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mTopActivity:Landroid/content/ComponentName;

    return-object p1
.end method

.method public static getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;
    .locals 2

    sget-object v0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->instance:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->instance:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    invoke-direct {v1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;-><init>()V

    sput-object v1, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->instance:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->instance:Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    return-object v0
.end method

.method private registerActivityObserverInAMS(Landroid/content/Context;Landroid/app/IMiuiActivityObserver;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-nez p1, :cond_0

    const-string p1, "ActivityObserverLauncherImpl"

    const-string p2, "registerMiuiActivityObserver am = null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "registerActivityObserver"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/app/IMiuiActivityObserver;

    aput-object v5, v4, v0

    const-class v5, Landroid/content/Intent;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    aput-object p2, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ActivityObserverLauncherImpl"

    const-string p2, "registerMiuiActivityObserver success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception p1

    const-string p2, "ActivityObserverLauncherImpl"

    const-string v1, "registerMiuiActivityObserver error"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private registerActivityObserverInATMS(Landroid/app/IMiuiActivityObserver;)V
    .locals 8

    :try_start_0
    const-string v0, "android.app.ActivityTaskManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "registerActivityObserver"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/IMiuiActivityObserver;

    aput-object v6, v5, v2

    const-class v6, Landroid/content/Intent;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    aput-object p1, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ActivityObserverLauncherImpl"

    const-string v0, "registerForAtLeastAndroidS success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ActivityObserverLauncherImpl"

    const-string v1, "registerForAtLeastAndroidS error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearTopActivity()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mTopActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public getTopActivity()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mTopActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public registerMiuiActivityObserver(Landroid/content/Context;Landroid/app/IMiuiActivityObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->registerActivityObserverInAMS(Landroid/content/Context;Landroid/app/IMiuiActivityObserver;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->registerActivityObserverInATMS(Landroid/app/IMiuiActivityObserver;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->mMiuiActivityObserver:Landroid/app/IMiuiActivityObserver;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->registerMiuiActivityObserver(Landroid/content/Context;Landroid/app/IMiuiActivityObserver;)V

    return-void
.end method
