.class public Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FocusedItemDecorator.java"


# instance fields
.field private mHelper:Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper;

.field private mPaddingSetter:Lcom/miui/home/launcher/allapps/ItemPaddingSetter;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/home/launcher/allapps/ItemPaddingSetter;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;->mHelper:Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper;

    iput-object p2, p0, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;->mPaddingSetter:Lcom/miui/home/launcher/allapps/ItemPaddingSetter;

    return-void
.end method


# virtual methods
.method public getFocusListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;->mHelper:Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper;

    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iget-object p3, p0, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;->mPaddingSetter:Lcom/miui/home/launcher/allapps/ItemPaddingSetter;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;->mPaddingSetter:Lcom/miui/home/launcher/allapps/ItemPaddingSetter;

    invoke-interface {p3, p2, p1}, Lcom/miui/home/launcher/allapps/ItemPaddingSetter;->setItemPadding(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iget-object p2, p0, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;->mHelper:Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
