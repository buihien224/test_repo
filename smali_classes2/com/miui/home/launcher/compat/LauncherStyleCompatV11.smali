.class Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;
.super Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;
.source "LauncherStyleCompatV11.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getLauncherDialogPaddingBottom()I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getLauncherDialogPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMiuiDialogCornerRadius(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getLauncherMenuItemMinHeight()I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getLauncherMenuItemTitleSize()I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
