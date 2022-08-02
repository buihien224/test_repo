.class public Lcom/miui/home/launcher/multiselect/TopMenuState;
.super Ljava/lang/Object;
.source "TopMenuState.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mStateName:Ljava/lang/String;

.field private mTopMenuColor:Lcom/miui/home/launcher/multiselect/TopMenuColor;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mStateName:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mTopMenuColor:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    return-void
.end method


# virtual methods
.method public getImageAlphaForFolmeAnim()F
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mTopMenuColor:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getImageViewColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mStateName:Ljava/lang/String;

    return-object v0
.end method

.method public getTopMenuColor()Lcom/miui/home/launcher/multiselect/TopMenuColor;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mTopMenuColor:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    return-object v0
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mTopMenuColor:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->onWallpaperColorChanged()V

    return-void
.end method
