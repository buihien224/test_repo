.class Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;
.super Landroid/content/pm/LauncherApps$Callback;
.source "LauncherAppsCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/compat/LauncherAppsCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedCallback"
.end annotation


# instance fields
.field private final mCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# direct methods
.method public constructor <init>(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    new-instance v2, Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-direct {v2, v1}, Lcom/miui/launcher/common/ShortcutInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {p2, p1, v0, p3}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method
