.class Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$6;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "InternalPreInstallAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getCNColudControl()Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker<",
        "Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;",
        "Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$6;->this$0:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    invoke-direct {p0, p2, p3}, Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public innerInvoke(Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;)Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;->getCNColudControl()Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "InternalPreInstallAdHelper"

    const-string v1, "handleViewError: "

    invoke-static {v0, v1, p1}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$6;->innerInvoke(Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;)Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;

    move-result-object p1

    return-object p1
.end method
