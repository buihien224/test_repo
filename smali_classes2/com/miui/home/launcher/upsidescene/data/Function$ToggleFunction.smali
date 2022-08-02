.class public Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;
.super Lcom/miui/home/launcher/upsidescene/data/Function;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleFunction"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Function;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V

    return-void
.end method


# virtual methods
.method public getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ToggleId"

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->getToggleId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    iput-object v0, v1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x3

    iput v0, v1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    return-object v1
.end method

.method public getToggleId()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getToggleIdFromString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isShowIcon()Z
    .locals 3

    const-string v0, "is_show_icon"

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/Function;->access$000(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;Z)Z

    move-result v0

    return v0
.end method

.method public isShowTitle()Z
    .locals 3

    const-string v0, "is_show_title"

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/Function;->access$000(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;Z)Z

    move-result v0

    return v0
.end method

.method public setToggleId(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    invoke-static {p1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getToggleStringFromId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    return-void
.end method
