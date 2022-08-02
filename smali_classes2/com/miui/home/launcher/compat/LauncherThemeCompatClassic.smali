.class public Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;
.super Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;
.source "LauncherThemeCompatClassic.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getFolderPreviewHeight()I
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->getFolderPreviewHeight()I

    move-result v0

    const v1, 0x7f07017c

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;->isThemeOverride(I)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getFolderPreviewItemPadding()I
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->getFolderPreviewItemPadding()I

    move-result v0

    const v1, 0x7f07017d

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;->isThemeOverride(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getFolderPreviewWidth()I
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->getFolderPreviewWidth()I

    move-result v0

    const v1, 0x7f07017e

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;->isThemeOverride(I)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getTitleMarginTop()I
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->getTitleMarginTop()I

    move-result v0

    const v1, 0x7f0701b3

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;->isThemeOverride(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
