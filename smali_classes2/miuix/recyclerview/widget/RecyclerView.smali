.class public Lmiuix/recyclerview/widget/RecyclerView;
.super Landroidx/recyclerview/widget/SpringRecyclerView;
.source "RecyclerView.java"


# instance fields
.field private final mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroidx/recyclerview/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    invoke-direct {p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-le p1, p2, :cond_0

    new-instance p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    invoke-direct {p1, p0}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;-><init>(Lmiuix/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->touchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public fling(II)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    move p1, v2

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    move p2, v2

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SpringRecyclerView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p2, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->onFocusChange(Z)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onScrollStateChanged(I)V

    iget-object v0, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->scrollState(Lmiuix/recyclerview/widget/RecyclerView;I)V

    :cond_0
    return-void
.end method

.method public onScrolled(II)V
    .locals 1

    iget-object v0, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->calculateSpeed(II)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->onScrolled(II)V

    return-void
.end method
