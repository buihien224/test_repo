.class public Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;
.super Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;
.source "LauncherCellCountCompatNoWord.kt"


# instance fields
.field private mShouldLoadResCellConfig:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellCountXDef(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXDef(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    return p1
.end method

.method public getCellCountXMax(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXMax(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    return p1
.end method

.method public getCellCountXMin(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXMin(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    return p1
.end method

.method public getCellCountYDef(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYDef(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    return p1
.end method

.method public getCellCountYMax(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYMax(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    return p1
.end method

.method public getCellCountYMin(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYMin(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    return p1
.end method

.method public final getLoadResCellConfig()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    return v0
.end method

.method public final setLoadResCellConfig(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    return-void
.end method
