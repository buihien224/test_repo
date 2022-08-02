.class public Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SmallWindowListRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpacesItemDecoration"
.end annotation


# instance fields
.field private mBottom:I

.field private mLeft:I

.field private mRight:I

.field private mSpace:I

.field private mTop:I

.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;


# direct methods
.method public constructor <init>(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;IIIII)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p2, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mLeft:I

    iput p3, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mTop:I

    iput p5, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mBottom:I

    iput p4, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mRight:I

    iput p6, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mSpace:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iget p4, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mTop:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    iget p4, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mBottom:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-static {p4}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->access$000(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;)Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->getSelectedCount()I

    move-result p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    if-nez p4, :cond_0

    const/4 p2, 0x0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mLeft:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    return-void
.end method
