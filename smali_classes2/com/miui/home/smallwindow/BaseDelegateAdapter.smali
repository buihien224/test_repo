.class public Lcom/miui/home/smallwindow/BaseDelegateAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseDelegateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/smallwindow/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static ITEM_VIEW_TYPE_ITEM:I = 0x0

.field public static ITEM_VIEW_TYPE_SPLIT:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemViewCallback:Lcom/miui/home/smallwindow/ItemViewCallback;

.field private mLayoutId:I

.field private mSelectedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mLayoutId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mSelectedCount:I

    iput-object p1, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mLayoutId:I

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/smallwindow/BaseDelegateAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/smallwindow/BaseDelegateAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mItemInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkIsInSmallWindow(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isPkgInSmallWindowMode(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher_BaseDelegateAdapter"

    const-string v1, "checkIsInSmallWindow: is in small window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mItemViewCallback:Lcom/miui/home/smallwindow/ItemViewCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/home/smallwindow/ItemViewCallback;->onItemClicked(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mItemInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget v0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mSelectedCount:I

    if-ne p1, v0, :cond_0

    sget p1, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->ITEM_VIEW_TYPE_SPLIT:I

    return p1

    :cond_0
    sget p1, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->ITEM_VIEW_TYPE_ITEM:I

    return p1
.end method

.method public getSelectedCount()I
    .locals 1

    iget v0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mSelectedCount:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/home/smallwindow/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->onBindViewHolder(Lcom/miui/home/smallwindow/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/smallwindow/BaseViewHolder;I)V
    .locals 3

    iget v0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mSelectedCount:I

    if-ne p2, v0, :cond_2

    if-eqz v0, :cond_1

    sget p2, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->SELECTED_LIST_MAX_SIZE:I

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    sget p2, Lcom/miui/home/smallwindow/R$id;->split:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/smallwindow/BaseViewHolder;->setVisible(IZ)Lcom/miui/home/smallwindow/BaseViewHolder;

    goto :goto_1

    :cond_1
    :goto_0
    sget p2, Lcom/miui/home/smallwindow/R$id;->split:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/smallwindow/BaseViewHolder;->setVisible(IZ)Lcom/miui/home/smallwindow/BaseViewHolder;

    :goto_1
    return-void

    :cond_2
    if-ge p2, v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    :goto_2
    sget v0, Lcom/miui/home/smallwindow/R$id;->icon:I

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;

    invoke-static {v1}, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->access$000(Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/miui/home/smallwindow/R$id;->title:I

    invoke-virtual {p1, v1}, Lcom/miui/home/smallwindow/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;

    invoke-static {v2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->access$100(Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/miui/home/smallwindow/R$id;->container:I

    invoke-virtual {p1, v2}, Lcom/miui/home/smallwindow/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;

    invoke-static {v2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->access$100(Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    new-instance p1, Lcom/miui/home/smallwindow/BaseDelegateAdapter$1;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter$1;-><init>(Lcom/miui/home/smallwindow/BaseDelegateAdapter;I)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/miui/home/smallwindow/BaseDelegateAdapter$2;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter$2;-><init>(Lcom/miui/home/smallwindow/BaseDelegateAdapter;I)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/smallwindow/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/smallwindow/BaseViewHolder;
    .locals 3

    sget v0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->ITEM_VIEW_TYPE_ITEM:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/miui/home/smallwindow/BaseViewHolder;

    iget-object v0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mLayoutId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/smallwindow/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    sget v0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->ITEM_VIEW_TYPE_SPLIT:I

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/miui/home/smallwindow/BaseViewHolder;

    iget-object v0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/miui/home/smallwindow/R$layout;->small_window_split:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/smallwindow/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setItemInfoList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mItemInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public setItemViewCallback(Lcom/miui/home/smallwindow/ItemViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mItemViewCallback:Lcom/miui/home/smallwindow/ItemViewCallback;

    return-void
.end method

.method public setSelectedCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mSelectedCount:I

    return-void
.end method

.method public startFreeformActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->checkIsInSmallWindow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "android.intent.action.MAIN"

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-static {p1, p2}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->makeFreeformActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mItemViewCallback:Lcom/miui/home/smallwindow/ItemViewCallback;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->mItemViewCallback:Lcom/miui/home/smallwindow/ItemViewCallback;

    invoke-interface {p1, p2}, Lcom/miui/home/smallwindow/ItemViewCallback;->onItemClicked(Ljava/lang/String;)V

    :cond_1
    const-string p1, "Launcher_BaseDelegateAdapter"

    const-string p2, "startFreeformActivity success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "Launcher_BaseDelegateAdapter"

    const-string p2, "startFreeformActivity fail : option==null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher_BaseDelegateAdapter"

    const-string p3, "startFreeformActivity error"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
