.class final Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "HideAppAdapter.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/HideAppAdapter;->onBindViewHolder(Lcom/miui/home/settings/HideAppAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $appInfo:Lcom/miui/home/launcher/AppInfo;

.field final synthetic this$0:Lcom/miui/home/settings/HideAppAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    iput-object p2, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;-><init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;)V

    check-cast p2, Ljava/util/function/Function;

    new-instance v1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;-><init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;Landroid/widget/CompoundButton;)V

    check-cast v1, Ljava/util/function/Consumer;

    invoke-static {p2, v1, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getDeleteTip(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/util/Pair;

    move-result-object p2

    new-instance v1, Lmiui/home/lib/dialog/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    invoke-static {v2}, Lcom/miui/home/settings/HideAppAdapter;->access$getMContext$p(Lcom/miui/home/settings/HideAppAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setCancelable(Z)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v1

    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v1

    if-eqz p2, :cond_2

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    :cond_2
    invoke-virtual {v1, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1100d9

    new-instance v1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$1;-><init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;Landroid/widget/CompoundButton;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f11046e

    new-instance v0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;-><init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p1

    const-string p2, "AlertDialog.Builder(mCon\u2026                .create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    :goto_1
    return-void
.end method
