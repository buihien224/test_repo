.class Lcom/miui/home/library/compat/UserManagerCompatVN;
.super Lcom/miui/home/library/compat/UserManagerCompatVL;
.source "UserManagerCompatVN.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/library/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method
