.class public abstract Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "ShortcutConfigActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;
    }
.end annotation


# instance fields
.field private final mCn:Landroid/content/ComponentName;

.field protected mLabel:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;

.field public mWidgetCategory:I


# direct methods
.method protected constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mWidgetCategory:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->itemType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->spanX:I

    iput v0, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->spanY:I

    iput-object p1, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method public static tryCreateShortcutInfoFromPinItemRequest(Lcom/miui/launcher/common/PinItemRequestCompat;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/launcher/common/PinItemRequestCompat;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/launcher/common/PinItemRequestCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/launcher/common/PinItemRequestCompat;->accept()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-virtual {p0}, Lcom/miui/launcher/common/PinItemRequestCompat;->getShortcutInfo()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DeepShortcutInfo;-><init>(Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/DeepShortcutInfo;->updateDeepShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    return-object v0
.end method

.method public abstract getFullResIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getWidgetCategoryId()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mWidgetCategory:I

    return v0
.end method

.method public getWidgetCategoryString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f110031

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "SCActivityInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v2
.end method
