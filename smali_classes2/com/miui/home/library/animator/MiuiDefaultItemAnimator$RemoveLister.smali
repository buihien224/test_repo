.class public Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;
.super Lmiuix/animation/listener/TransitionListener;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RemoveLister"
.end annotation


# instance fields
.field mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;


# direct methods
.method public constructor <init>(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    iput-object p2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object p1, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    invoke-virtual {p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method
