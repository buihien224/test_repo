.class final Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableSubscribeOn.java"

# interfaces
.implements Lio/reactivex2/Observer;
.implements Lio/reactivex2/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscribeOnObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex2/disposables/Disposable;",
        ">;",
        "Lio/reactivex2/Observer<",
        "TT;>;",
        "Lio/reactivex2/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x70559c6a66be0138L


# instance fields
.field final downstream:Lio/reactivex2/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex2/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex2/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->downstream:Lio/reactivex2/Observer;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex2/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-static {p0}, Lio/reactivex2/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex2/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex2/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex2/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {v0}, Lio/reactivex2/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {v0, p1}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {v0, p1}, Lio/reactivex2/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex2/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex2/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex2/disposables/Disposable;)Z

    return-void
.end method

.method setDisposable(Lio/reactivex2/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex2/disposables/Disposable;)Z

    return-void
.end method
