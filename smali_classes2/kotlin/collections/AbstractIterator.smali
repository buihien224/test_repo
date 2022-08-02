.class public abstract Lkotlin/collections/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.kt"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Lkotlin/collections/State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    iput-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    return-void
.end method

.method private final tryToComputeNext()Z
    .locals 2

    sget-object v0, Lkotlin/collections/State;->Failed:Lkotlin/collections/State;

    iput-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->computeNext()V

    iget-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    sget-object v1, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract computeNext()V
.end method

.method protected final done()V
    .locals 1

    sget-object v0, Lkotlin/collections/State;->Done:Lkotlin/collections/State;

    iput-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    return-void
.end method

.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    sget-object v1, Lkotlin/collections/State;->Failed:Lkotlin/collections/State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    sget-object v1, Lkotlin/collections/AbstractIterator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lkotlin/collections/State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;->tryToComputeNext()Z

    move-result v2

    goto :goto_1

    :pswitch_0
    move v2, v3

    :goto_1
    :pswitch_1
    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    iput-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    iget-object v0, p0, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final setNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    sget-object p1, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    iput-object p1, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    return-void
.end method
