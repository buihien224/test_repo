.class public final Lcom/miui/home/launcher/common/FoldScreenModeObserver;
.super Ljava/lang/Object;
.source "FoldScreenModeObserver.kt"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private mScreenModeUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->INSTANCE:Lcom/miui/home/launcher/common/FoldScreenModeObservable;

    move-object v1, p0

    check-cast v1, Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method public final runWhenScreenModeChange(Lkotlin/jvm/functions/Function0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/home/launcher/common/FoldScreenModeObserver;->mScreenModeUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/miui/home/launcher/common/FoldScreenModeObserver;->mScreenModeUpdate:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/home/launcher/common/FoldScreenModeObserver;->mScreenModeUpdate:Z

    return-void
.end method
