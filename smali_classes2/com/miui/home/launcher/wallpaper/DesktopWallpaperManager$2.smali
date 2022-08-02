.class Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;
.super Ljava/lang/Object;
.source "DesktopWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher_DesktopWallpaperManager"

    const-string v1, "adaptHomeToWallpaper, launcher is destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Launcher_DesktopWallpaperManager"

    const-string v1, "adaptHomeToWallpaper, launcher is loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLoadingAnimation()Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLoadingAnimation()Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->showLoading()V

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const-string v0, "Launcher_DesktopWallpaperManager"

    const-string v1, "adaptHomeToWallpaper, notify everyone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$400(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->changeStatusBarMode()V

    return-void
.end method
