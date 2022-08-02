.class public Lmiuix/animation/controller/ListViewTouchListener;
.super Ljava/lang/Object;
.source "ListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lmiuix/animation/controller/ListViewTouchListener;->mTouchSlop:I

    return-void
.end method

.method private getTouchedItemView(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    iget-object v4, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private notifyItemListeners(Landroid/widget/AbsListView;Landroid/view/MotionEvent;Z)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/ListViewTouchListener;->getTouchedItemView(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez p3, :cond_0

    if-ne v2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnTouchListener;

    if-eqz v3, :cond_1

    move-object v3, p2

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1, v2, v3}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    sub-float/2addr v0, v2

    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    sub-float/2addr v0, v2

    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    :goto_1
    move v0, v1

    :goto_2
    check-cast p1, Landroid/widget/AbsListView;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/controller/ListViewTouchListener;->notifyItemListeners(Landroid/widget/AbsListView;Landroid/view/MotionEvent;Z)V

    return v1
.end method

.method public putListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
