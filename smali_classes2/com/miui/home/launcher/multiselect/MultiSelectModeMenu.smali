.class public Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;
.super Landroid/widget/FrameLayout;
.source "MultiSelectModeMenu.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# static fields
.field public static final TOP_MENU_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

.field private mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->TOP_MENU_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setLeftMargin(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setRightMargin(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTopMargin(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditModeTopMenuMarginTop()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public changeFinishContainerToGoneState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/FinishContainer;->changeToGoneState(Z)V

    return-void
.end method

.method public changeFinishContainerToNormalState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/FinishContainer;->changeToNormalState(Z)V

    return-void
.end method

.method public changeGroupContainerToGoneState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/GroupContainer;->changeToGoneState(Z)V

    return-void
.end method

.method public changeGroupContainerToNormalState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/GroupContainer;->changeToNormalState(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a015a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/FinishContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    const v0, 0x7f0a0139

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/GroupContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setLeftMargin(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setRightMargin(Landroid/view/View;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/FinishContainer;->onWallpaperColorChanged()V

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/GroupContainer;->onWallpaperColorChanged()V

    return-void
.end method
