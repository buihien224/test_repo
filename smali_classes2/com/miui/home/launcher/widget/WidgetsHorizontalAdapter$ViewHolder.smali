.class public Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WidgetsHorizontalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public mImageView:Landroid/widget/ImageView;

.field public mItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field public mTextView:Landroid/widget/TextView;

.field public mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    check-cast p1, Lcom/miui/home/launcher/widget/WidgetCell;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    const v0, 0x7f0a01ca

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    const v0, 0x7f0a01cd

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method
