.class Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;
.super Ljava/lang/Object;
.source "MiuiDefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->animateChangeImpl(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

.field final synthetic val$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$view:Landroid/view/View;

    iput-object p3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$view:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v4, 0x2

    aput-object v0, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v2, v4

    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v3}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->notifyChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
