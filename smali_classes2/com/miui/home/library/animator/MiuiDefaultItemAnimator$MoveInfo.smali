.class Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;->fromX:I

    iput p3, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;->fromY:I

    iput p4, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;->toX:I

    iput p5, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;->toY:I

    return-void
.end method
