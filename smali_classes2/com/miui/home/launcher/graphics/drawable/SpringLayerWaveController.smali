.class public Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;
.super Ljava/lang/Object;
.source "SpringLayerWaveController.java"


# static fields
.field private static final LOCATION:[I


# instance fields
.field private final mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

.field private final mFolderCling:Lcom/miui/home/launcher/FolderCling;

.field private final mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->LOCATION:[I

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    return-void
.end method

.method static synthetic lambda$startWaveAnimation$0(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;FF)V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getAnimationIndex()I

    move-result v1

    const v2, 0x3f733333    # 0.95f

    const v3, -0x425c28f6    # -0.08f

    int-to-float v1, v1

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v4

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->animateToTranslationX(FFFF)V

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->animateToTranslationY(FFFF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startWaveAnimation(IILcom/miui/home/launcher/ShortcutIcon;I)V
    .locals 9

    invoke-virtual {p3}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->LOCATION:[I

    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/ShortcutIcon;->getLocationInWindow([I)V

    sget-object v1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->LOCATION:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p3}, Lcom/miui/home/launcher/ShortcutIcon;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v1, p1

    sget-object p1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->LOCATION:[I

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {p3}, Lcom/miui/home/launcher/ShortcutIcon;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    sub-int/2addr p1, p2

    int-to-float p2, v1

    int-to-float p1, p1

    invoke-static {p2, p1}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-gez v1, :cond_2

    const/4 v2, -0x1

    :cond_2
    int-to-float v2, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    double-to-float v2, v2

    int-to-float p4, p4

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    add-float/2addr p4, v3

    invoke-static {p4}, Lcom/miui/home/launcher/common/Utilities;->boundToRangeAnimatorParams(F)F

    move-result p4

    const v3, 0x44a28000    # 1300.0f

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    mul-float/2addr p2, v2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->boundToRangeAnimatorParams(F)F

    move-result p2

    mul-float/2addr v2, p1

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRangeAnimatorParams(F)F

    move-result p1

    new-instance v1, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$SpringLayerWaveController$eyiFwlTAH6V5Supd83Px28a_QQA;

    invoke-direct {v1, v0, p2, p1}, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$SpringLayerWaveController$eyiFwlTAH6V5Supd83Px28a_QQA;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;FF)V

    float-to-int p1, p4

    int-to-long p1, p1

    invoke-virtual {p3, v1, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private varargs startWaveAnimation(Landroid/view/View;I[Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;)V
    .locals 5

    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->LOCATION:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->LOCATION:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget-object v2, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->LOCATION:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    array-length p1, p3

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v3, p3, v1

    invoke-interface {v3}, Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0, v0, v2, v4, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->startWaveAnimation(IILcom/miui/home/launcher/ShortcutIcon;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public startWaveAnimation(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;

    iget-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->startWaveAnimation(Landroid/view/View;I[Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;

    iget-object v3, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->startWaveAnimation(Landroid/view/View;I[Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;

    iget-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;->startWaveAnimation(Landroid/view/View;I[Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;)V

    :cond_2
    :goto_0
    return-void
.end method
