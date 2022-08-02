.class public Lkotlinx/coroutines/internal/ThreadSafeHeap;
.super Ljava/lang/Object;
.source "ThreadSafeHeap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreadSafeHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,160:1\n20#2:161\n20#2:162\n20#2:163\n20#2:164\n20#2:165\n20#2:166\n20#2:167\n1#3:168\n*E\n*S KotlinDebug\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n35#1:161\n40#1:162\n42#1:163\n51#1:164\n60#1:165\n64#1:166\n73#1:167\n*E\n"
.end annotation


# instance fields
.field private volatile _size:I

.field private a:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:I

    return-void
.end method

.method private final realloc()[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    iput-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v1

    array-length v2, v0

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    iput-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private final setSize(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:I

    return-void
.end method

.method private final siftDownFrom(I)V
    .locals 5

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v1, v0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    move v0, v2

    :cond_1
    aget-object v2, v1, p1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v1, v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    move p1, v0

    goto :goto_0
.end method

.method private final siftUpFrom(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    move p1, v1

    goto :goto_0
.end method

.method private final swap(II)V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v0, p2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v2, v0, p1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    aput-object v2, v0, p2

    invoke-interface {v1, p1}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setIndex(I)V

    invoke-interface {v2, p2}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setIndex(I)V

    return-void
.end method


# virtual methods
.method public final addImpl(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->getHeap()Lkotlinx/coroutines/internal/ThreadSafeHeap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    :goto_1
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setHeap(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V

    invoke-direct {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->realloc()[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->setSize(I)V

    aput-object p1, v0, v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setIndex(I)V

    invoke-direct {p0, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->siftUpFrom(I)V

    return-void
.end method

.method public final firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:I

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final peek()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->getHeap()Lkotlinx/coroutines/internal/ThreadSafeHeap;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->getIndex()I

    move-result p1

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final removeAtImpl(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->setSize(I)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v3

    if-ge p1, v3, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v3, v3, 0x2

    if-lez p1, :cond_3

    aget-object v5, v0, p1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v0, v3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    invoke-direct {p0, p1, v3}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    invoke-direct {p0, v3}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->siftUpFrom(I)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->siftDownFrom(I)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->getHeap()Lkotlinx/coroutines/internal/ThreadSafeHeap;

    move-result-object v3

    move-object v5, p0

    check-cast v5, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-ne v3, v5, :cond_5

    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_7
    :goto_3
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setHeap(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V

    invoke-interface {p1, v4}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setIndex(I)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v2

    check-cast v1, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    aput-object v1, v0, v2

    return-object p1
.end method

.method public final removeFirstOrNull()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
