.class public Lcom/xiaomi/mirror/ISameAccountApCallback$Default;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mirror/ISameAccountApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/ISameAccountApCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onApConnectedStatusUpdate(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onApInfoUpdate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
