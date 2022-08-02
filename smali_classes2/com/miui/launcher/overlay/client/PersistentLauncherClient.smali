.class public Lcom/miui/launcher/overlay/client/PersistentLauncherClient;
.super Lcom/miui/launcher/overlay/client/LauncherClient;
.source "PersistentLauncherClient.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V
    .locals 1

    new-instance v0, Lcom/miui/launcher/overlay/client/LauncherClientCallbackAdapter;

    invoke-direct {v0}, Lcom/miui/launcher/overlay/client/LauncherClientCallbackAdapter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/launcher/overlay/client/PersistentLauncherClient;-><init>(Landroid/app/Activity;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/overlay/client/LauncherClient;-><init>(Landroid/app/Activity;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherClient;->connect()V

    return-void
.end method


# virtual methods
.method protected onServiceStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onStart()V

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherClient;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherClient;->connect()V

    :cond_0
    return-void
.end method
