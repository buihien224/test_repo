.class public final synthetic Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$eEYabI--kvv-9oThTYzAKkAdFK8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$eEYabI--kvv-9oThTYzAKkAdFK8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$eEYabI--kvv-9oThTYzAKkAdFK8;

    invoke-direct {v0}, Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$eEYabI--kvv-9oThTYzAKkAdFK8;-><init>()V

    sput-object v0, Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$eEYabI--kvv-9oThTYzAKkAdFK8;->INSTANCE:Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$eEYabI--kvv-9oThTYzAKkAdFK8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/maml/util/ExecutorHelper;->lambda$getLocalTaskExecutor$1(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
