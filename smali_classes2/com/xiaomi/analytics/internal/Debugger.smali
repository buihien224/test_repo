.class public Lcom/xiaomi/analytics/internal/Debugger;
.super Ljava/lang/Object;
.source "Debugger.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/analytics/internal/Debugger;

.field public static sUseStaging:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDebugReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mIsRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/Debugger;->mIsRegistered:Z

    new-instance v0, Lcom/xiaomi/analytics/internal/Debugger$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/Debugger$1;-><init>(Lcom/xiaomi/analytics/internal/Debugger;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/Debugger;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/Debugger;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getDebugger(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/Debugger;
    .locals 2

    const-class v0, Lcom/xiaomi/analytics/internal/Debugger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/analytics/internal/Debugger;->sInstance:Lcom/xiaomi/analytics/internal/Debugger;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/analytics/internal/Debugger;

    invoke-direct {v1, p0}, Lcom/xiaomi/analytics/internal/Debugger;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/analytics/internal/Debugger;->sInstance:Lcom/xiaomi/analytics/internal/Debugger;

    :cond_0
    sget-object p0, Lcom/xiaomi/analytics/internal/Debugger;->sInstance:Lcom/xiaomi/analytics/internal/Debugger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public register()V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/Debugger;->mIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/Debugger;->mIsRegistered:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.analytics.intent.DEBUG_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.analytics.intent.DEBUG_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.analytics.intent.STAGING_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.analytics.intent.STAGING_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/Debugger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/Debugger;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
