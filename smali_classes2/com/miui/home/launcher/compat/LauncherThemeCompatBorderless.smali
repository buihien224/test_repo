.class public Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;
.super Lcom/miui/home/launcher/compat/LauncherThemeCompat;
.source "LauncherThemeCompatBorderless.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mFolderPreviewHeight:I

.field private mFolderPreviewItemPadding:I

.field private mFolderPreviewWidth:I

.field private mLauncherIconHeight:I

.field private mLauncherIconWidth:I

.field private mLauncherPairIconHeight:I

.field private mLauncherPairIconWidth:I

.field private mResource:Landroid/content/res/Resources;

.field private mTitleTop:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0701b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    iget-object v1, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f070142

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f07017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewWidth:I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f07017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewHeight:I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f07017d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewItemPadding:I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconWidth:I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconHeight:I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherPairIconWidth:I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherPairIconHeight:I

    return-void
.end method

.method public getFolderPreviewHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewHeight:I

    return v0
.end method

.method public getFolderPreviewItemPadding()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewItemPadding:I

    return v0
.end method

.method public getFolderPreviewWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewWidth:I

    return v0
.end method

.method public getLauncherIconHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconHeight:I

    return v0
.end method

.method public getLauncherIconWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconWidth:I

    return v0
.end method

.method public getLauncherPairIconHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherPairIconHeight:I

    return v0
.end method

.method public getLauncherPairIconWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherPairIconWidth:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    return v0
.end method
