.class public Lcom/miui/home/launcher/overlay/assistant/AssistantInstallController;
.super Ljava/lang/Object;
.source "AssistantInstallController.java"


# instance fields
.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public requestInstall(Lcom/miui/home/launcher/ItemInfo;ZLandroid/os/Bundle;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->requestInstallApp(Lcom/miui/home/launcher/ItemInfo;ZLandroid/os/Bundle;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    return-void
.end method
