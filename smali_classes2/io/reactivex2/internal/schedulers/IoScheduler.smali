.class public final Lio/reactivex2/internal/schedulers/IoScheduler;
.super Lio/reactivex2/Scheduler;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;,
        Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;,
        Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;
    }
.end annotation


# static fields
.field static final EVICTOR_THREAD_FACTORY:Lio/reactivex2/internal/schedulers/RxThreadFactory;

.field private static final KEEP_ALIVE_TIME:J

.field private static final KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

.field static final NONE:Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;

.field static final SHUTDOWN_THREAD_WORKER:Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;

.field static final WORKER_THREAD_FACTORY:Lio/reactivex2/internal/schedulers/RxThreadFactory;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lio/reactivex2/internal/schedulers/IoScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    const-string v0, "rx2.io-keep-alive-time"

    const-wide/16 v1, 0x3c

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lio/reactivex2/internal/schedulers/IoScheduler;->KEEP_ALIVE_TIME:J

    new-instance v0, Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;

    new-instance v1, Lio/reactivex2/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Lio/reactivex2/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex2/internal/schedulers/IoScheduler;->SHUTDOWN_THREAD_WORKER:Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;

    sget-object v0, Lio/reactivex2/internal/schedulers/IoScheduler;->SHUTDOWN_THREAD_WORKER:Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;

    invoke-virtual {v0}, Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;->dispose()V

    const-string v0, "rx2.io-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lio/reactivex2/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Lio/reactivex2/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex2/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex2/internal/schedulers/RxThreadFactory;

    new-instance v1, Lio/reactivex2/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedWorkerPoolEvictor"

    invoke-direct {v1, v2, v0}, Lio/reactivex2/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex2/internal/schedulers/IoScheduler;->EVICTOR_THREAD_FACTORY:Lio/reactivex2/internal/schedulers/RxThreadFactory;

    new-instance v0, Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;

    sget-object v1, Lio/reactivex2/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex2/internal/schedulers/RxThreadFactory;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex2/internal/schedulers/IoScheduler;->NONE:Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;

    sget-object v0, Lio/reactivex2/internal/schedulers/IoScheduler;->NONE:Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-virtual {v0}, Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/reactivex2/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex2/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex2/internal/schedulers/IoScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    invoke-direct {p0}, Lio/reactivex2/Scheduler;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/schedulers/IoScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex2/internal/schedulers/IoScheduler;->NONE:Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex2/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lio/reactivex2/internal/schedulers/IoScheduler;->start()V

    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex2/Scheduler$Worker;
    .locals 2

    new-instance v0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;

    iget-object v1, p0, Lio/reactivex2/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-direct {v0, v1}, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;-><init>(Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;)V

    return-object v0
.end method

.method public start()V
    .locals 5

    new-instance v0, Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;

    sget-wide v1, Lio/reactivex2/internal/schedulers/IoScheduler;->KEEP_ALIVE_TIME:J

    sget-object v3, Lio/reactivex2/internal/schedulers/IoScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex2/internal/schedulers/IoScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, Lio/reactivex2/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex2/internal/schedulers/IoScheduler;->NONE:Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    :cond_0
    return-void
.end method
