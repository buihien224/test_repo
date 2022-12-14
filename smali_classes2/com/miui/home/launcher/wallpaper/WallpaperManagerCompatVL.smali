.class public Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;
.super Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;
.source "WallpaperManagerCompatVL.java"


# static fields
.field private static sTemp:[F


# instance fields
.field mWm:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->sTemp:[F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;-><init>()V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mWm:Landroid/app/WallpaperManager;

    return-void
.end method

.method private getColorModeFromHSL(I)I
    .locals 4

    sget-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->sTemp:[F

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    sget-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->sTemp:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarLightThreshold()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColorModeFromHSL ,color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",threshold:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarLightThreshold()F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",HSL:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->sTemp:[F

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mode:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getCurrentWallpaper(Lcom/miui/home/launcher/wallpaper/WallpaperCompat;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mWm:Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompat;->getWallpaperBitmap(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mWm:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    return-object p1
.end method

.method private getDesktopWallpaperColorMode(ZLandroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportCheckRegionalWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getWallpaperColorMode(ZLandroid/graphics/Bitmap;)I

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getWallpaperColors(ILandroid/graphics/Rect;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->getColorMode()I

    move-result p1

    return p1

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p3, p2}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperColorModeInArea(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private getWallpaperColorMode(ZLandroid/graphics/Bitmap;)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getWallpaperColors(I)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->getColorMode()I

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/miui/home/launcher/WallpaperUtils;->getSampleRatio(Landroid/graphics/Bitmap;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/home/library/utils/Graphics;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getWallpaperSearchBarColorMode(ZLandroid/graphics/Bitmap;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getWallpaperColors(ILandroid/graphics/Rect;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->getPrimaryColor()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getColorModeFromHSL(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lez v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {p2, v0, v2, v3, v1}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/palette/graphics/Palette;->getDominantColor(I)I

    move-result p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getColorModeFromHSL(I)I

    move-result p1

    return p1
.end method

.method private getWallpaperStatusBarColorMode(ZLandroid/graphics/Bitmap;)I
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getDesktopWallpaperColorMode(ZLandroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method private isWallpaperScrollable(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    mul-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method


# virtual methods
.method public getCurrentWallpaper()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mWm:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompat;->getWallpaper(Landroid/app/WallpaperInfo;)Lcom/miui/home/launcher/wallpaper/WallpaperCompat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getCurrentWallpaper(Lcom/miui/home/launcher/wallpaper/WallpaperCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDesktopWallpaperColorMode(Landroid/graphics/Rect;)I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mWm:Landroid/app/WallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->isStaticWallpaper(Landroid/app/WallpaperManager;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getDesktopWallpaperColorMode(ZLandroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method public getDesktopWallpaperInfo()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mWm:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompat;->getWallpaper(Landroid/app/WallpaperInfo;)Lcom/miui/home/launcher/wallpaper/WallpaperCompat;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompat;->supportDarkenWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isDarkenWholeWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;-><init>(IIIZ)V

    sget-object v1, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->TAG:Ljava/lang/String;

    const-string v2, "force to dark mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getCurrentWallpaper(Lcom/miui/home/launcher/wallpaper/WallpaperCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mWm:Landroid/app/WallpaperManager;

    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->isStaticWallpaper(Landroid/app/WallpaperManager;)Z

    move-result v1

    sget-object v3, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wallpaper:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",static:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getWallpaperColorMode(ZLandroid/graphics/Bitmap;)I

    move-result v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportCheckRegionalWallpaper()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getWallpaperStatusBarColorMode(ZLandroid/graphics/Bitmap;)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getWallpaperSearchBarColorMode(ZLandroid/graphics/Bitmap;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->isWallpaperScrollable(Landroid/graphics/Bitmap;)Z

    move-result v0

    new-instance v4, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;-><init>(IIIZ)V

    sget-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaperInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    :goto_1
    return-object v0
.end method

.method public getWallpaperColors(I)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWallpaperColors(ILandroid/graphics/Rect;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;II)V

    return-void
.end method

.method public sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;II)V
    .locals 7

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v6, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL$1;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;Ljava/lang/ref/WeakReference;Ljava/lang/String;II)V

    invoke-interface {p2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
