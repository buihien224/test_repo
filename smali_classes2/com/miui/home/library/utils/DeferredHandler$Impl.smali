.class Lcom/miui/home/library/utils/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/library/utils/DeferredHandler;


# direct methods
.method private constructor <init>(Lcom/miui/home/library/utils/DeferredHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/library/utils/DeferredHandler;Lcom/miui/home/library/utils/DeferredHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/library/utils/DeferredHandler$Impl;-><init>(Lcom/miui/home/library/utils/DeferredHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-static {p1}, Lcom/miui/home/library/utils/DeferredHandler;->access$100(Lcom/miui/home/library/utils/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-static {v0}, Lcom/miui/home/library/utils/DeferredHandler;->access$100(Lcom/miui/home/library/utils/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-static {v0}, Lcom/miui/home/library/utils/DeferredHandler;->access$100(Lcom/miui/home/library/utils/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-static {p1}, Lcom/miui/home/library/utils/DeferredHandler;->access$100(Lcom/miui/home/library/utils/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object p1, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-virtual {p1}, Lcom/miui/home/library/utils/DeferredHandler;->scheduleNextLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public queueIdle()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/library/utils/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    return v0
.end method
