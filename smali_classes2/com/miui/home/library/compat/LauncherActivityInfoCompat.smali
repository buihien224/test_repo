.class public Lcom/miui/home/library/compat/LauncherActivityInfoCompat;
.super Ljava/lang/Object;
.source "LauncherActivityInfoCompat.java"


# direct methods
.method public static getActivityInfo(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/ActivityInfo;
    .locals 3

    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const-class v0, Landroid/content/pm/LauncherActivityInfo;

    const-string v1, "mActivityInfo"

    const-class v2, Landroid/content/pm/ActivityInfo;

    invoke-static {v2}, Lcom/miui/launcher/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public static getIconResource(Landroid/content/pm/LauncherActivityInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherActivityInfoCompat;->getActivityInfo(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
