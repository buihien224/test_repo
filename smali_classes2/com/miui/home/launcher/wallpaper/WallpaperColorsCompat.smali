.class public Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
.super Ljava/lang/Object;
.source "WallpaperColorsCompat.java"


# instance fields
.field private final mColorHints:I

.field private final mPrimaryColor:I

.field private final mSecondaryColor:I

.field private final mTertiaryColor:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mPrimaryColor:I

    iput p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mSecondaryColor:I

    iput p3, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mTertiaryColor:I

    iput p4, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mColorHints:I

    return-void
.end method


# virtual methods
.method public getColorHints()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mColorHints:I

    return v0
.end method

.method public getColorMode()I
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mColorHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryColor()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mPrimaryColor:I

    return v0
.end method
