.class public Lcom/miui/home/smallwindow/BackgroundExecutor;
.super Ljava/lang/Object;
.source "BackgroundExecutor.java"


# static fields
.field private static final sInstance:Lcom/miui/home/smallwindow/BackgroundExecutor;


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/smallwindow/BackgroundExecutor;

    invoke-direct {v0}, Lcom/miui/home/smallwindow/BackgroundExecutor;-><init>()V

    sput-object v0, Lcom/miui/home/smallwindow/BackgroundExecutor;->sInstance:Lcom/miui/home/smallwindow/BackgroundExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/home/smallwindow/BackgroundExecutor$1;

    invoke-direct {v0, p0}, Lcom/miui/home/smallwindow/BackgroundExecutor$1;-><init>(Lcom/miui/home/smallwindow/BackgroundExecutor;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/smallwindow/BackgroundExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static get()Lcom/miui/home/smallwindow/BackgroundExecutor;
    .locals 1

    sget-object v0, Lcom/miui/home/smallwindow/BackgroundExecutor;->sInstance:Lcom/miui/home/smallwindow/BackgroundExecutor;

    return-object v0
.end method


# virtual methods
.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/smallwindow/BackgroundExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
