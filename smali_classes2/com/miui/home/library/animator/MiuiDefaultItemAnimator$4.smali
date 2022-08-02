.class Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iput-object p2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object p1, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    invoke-virtual {p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method
