.class public Lcom/miui/maml/component/MamlSurface;
.super Ljava/lang/Object;
.source "MamlSurface.java"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;
    }
.end annotation


# static fields
.field public static final MODE_ASSETS_FOLDER:I = 0x2

.field public static final MODE_FOLDER:I = 0x3

.field public static final MODE_ZIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MamlSurface"


# instance fields
.field private final mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFinished:Z

.field private mIsSuperWallpaper:Z

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/maml/component/MamlSurface$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlSurface$1;-><init>(Lcom/miui/maml/component/MamlSurface;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/component/MamlSurface;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/component/MamlSurface;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/component/MamlSurface;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/maml/component/MamlSurface$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlSurface$1;-><init>(Lcom/miui/maml/component/MamlSurface;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/component/MamlSurface;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/miui/maml/component/MamlSurface;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private finish()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/maml/component/MamlSurface;->mFinished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/maml/component/MamlSurface;->mFinished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/data/Variables;->reset()V

    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    :cond_0
    return-void
.end method

.method private getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;
    .locals 0

    packed-switch p4, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    new-instance p1, Lcom/miui/maml/util/FolderResourceLoader;

    invoke-direct {p1, p2}, Lcom/miui/maml/util/FolderResourceLoader;-><init>(Ljava/lang/String;)V

    return-object p1

    :pswitch_1
    new-instance p3, Lcom/miui/maml/util/AssetsResourceLoader;

    invoke-direct {p3, p1, p2}, Lcom/miui/maml/util/AssetsResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p3

    :pswitch_2
    new-instance p1, Lcom/miui/maml/util/ZipResourceLoader;

    invoke-direct {p1, p2, p3}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;Z)V
    .locals 1

    invoke-virtual {p3}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object p3, p0, Lcom/miui/maml/component/MamlSurface;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iput-boolean p4, p0, Lcom/miui/maml/component/MamlSurface;->mIsSuperWallpaper:Z

    if-eqz p2, :cond_0

    new-instance p3, Lcom/miui/maml/ResourceManager;

    invoke-direct {p3, p2}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    new-instance p2, Lcom/miui/maml/ScreenElementRoot;

    new-instance p4, Lcom/miui/maml/ScreenContext;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    invoke-direct {p2, p4}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    invoke-virtual {p2, p0}, Lcom/miui/maml/ScreenElementRoot;->setMamlSurface(Lcom/miui/maml/component/MamlSurface;)V

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object p2, p0, Lcom/miui/maml/component/MamlSurface;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-virtual {p1, p2}, Lcom/miui/maml/ScreenElementRoot;->setMamlSurfaceOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V

    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->isTransparentSurface()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    const/4 p2, -0x2

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 4

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->isUseHardwareCanvas()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    const-string v0, "MamlSurface"

    const-string v2, ":( fail to lock canvas."

    invoke-static {v0, v2}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MamlSurface"

    const-string v2, "unlockCanvasAndPost exception."

    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "MamlSurface"

    const-string v3, "render oom error."

    invoke-static {v2, v3, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_3

    :try_start_5
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    const-string v2, "MamlSurface"

    const-string v3, "render exception."

    invoke-static {v2, v3, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_3

    :try_start_7
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "MamlSurface"

    const-string v2, "unlockCanvasAndPost exception."

    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->doneRender()V

    goto :goto_5

    :goto_3
    if-eqz v1, :cond_4

    :try_start_8
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    const-string v2, "MamlSurface"

    const-string v3, "unlockCanvasAndPost exception."

    invoke-static {v2, v3, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v0

    :cond_5
    :goto_5
    return-void
.end method

.method public doneRender()V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->doneRender()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/maml/component/MamlSurface;->finish()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_getInstance_with_engine(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getVariables()Lcom/miui/maml/data/Variables;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isIsSuperWallpaper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/maml/component/MamlSurface;->mIsSuperWallpaper:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MamlSurface"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/maml/component/MamlSurface;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "MamlSurface"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "MamlSurface"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAutoDarkenWallpaper(Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->setAutoDarkenWallpaper(Z)V

    :cond_0
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setConfig(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnExternCommandListener(Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    :cond_0
    return-void
.end method

.method public setSaveConfigViaProvider(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    :cond_0
    return-void
.end method
