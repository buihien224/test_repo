.class Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefDismissListener"
.end annotation


# instance fields
.field mOnDismiss:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;",
            ">;"
        }
    .end annotation
.end field

.field mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V
    .locals 0

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;->end()V

    goto :goto_0

    :cond_0
    const-string p1, "PhoneDialogAnim"

    const-string v0, "onCancel mOnDismiss get null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;->end()V

    goto :goto_0

    :cond_0
    const-string p1, "PhoneDialogAnim"

    const-string v0, "onComplete mOnDismiss get null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    const-string v0, "hide"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
