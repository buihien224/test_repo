.class public final Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;
.super Ljava/lang/Object;
.source "LauncherAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/LauncherAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationResult"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mFinishRunnable:Ljava/lang/Runnable;

.field private mFinished:Z

.field private mInitialized:Z


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    iput-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lcom/miui/home/recents/LauncherAnimationRunner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-string v0, "LauncherAnimationRunner"

    const-string v1, "finish: mFinishRunnable.run"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    iput-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult$1;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Animation already initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
