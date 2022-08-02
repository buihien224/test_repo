.class public Lcom/miui/home/recents/util/TimeOutBlocker;
.super Ljava/lang/Object;
.source "TimeOutBlocker.java"


# static fields
.field private static final TIME_OUT_SESSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    return-void
.end method

.method public static isBlocked(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$startCountDown$0(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static startCountDown(Landroid/os/Handler;JLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$TimeOutBlocker$gVymVUHqUjspuNZmmpUvpxa8VhU;

    invoke-direct {v0, p3}, Lcom/miui/home/recents/util/-$$Lambda$TimeOutBlocker$gVymVUHqUjspuNZmmpUvpxa8VhU;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
