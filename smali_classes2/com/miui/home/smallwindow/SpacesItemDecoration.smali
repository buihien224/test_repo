.class public Lcom/miui/home/smallwindow/SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# instance fields
.field private mBottom:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/miui/home/smallwindow/SpacesItemDecoration;->mLeft:I

    iput p2, p0, Lcom/miui/home/smallwindow/SpacesItemDecoration;->mTop:I

    iput p4, p0, Lcom/miui/home/smallwindow/SpacesItemDecoration;->mBottom:I

    iput p3, p0, Lcom/miui/home/smallwindow/SpacesItemDecoration;->mRight:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iget p2, p0, Lcom/miui/home/smallwindow/SpacesItemDecoration;->mLeft:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/miui/home/smallwindow/SpacesItemDecoration;->mTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/miui/home/smallwindow/SpacesItemDecoration;->mRight:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/miui/home/smallwindow/SpacesItemDecoration;->mBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
