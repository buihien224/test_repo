.class public Lcom/miui/home/launcher/gadget/MaMlUtil;
.super Ljava/lang/Object;
.source "MaMlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;,
        Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;,
        Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;,
        Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;
    }
.end annotation


# static fields
.field private static final mDownloadObservers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->mDownloadObservers:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->sDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->sDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic lambda$showDownloadMaMlWarningDialog$0(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    check-cast p1, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->setMamlDownloadOnlyWifiWaitTime()V

    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;->onCancel()V

    return-void
.end method

.method static synthetic lambda$showDownloadMaMlWarningDialog$1(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    check-cast p1, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->setMamlDownloadNeverWarn()V

    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;->onSure()V

    return-void
.end method

.method public static showDownloadMaMlWarningDialog(Landroid/content/Context;JLcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V
    .locals 4

    const-wide/16 v0, 0x400

    div-long/2addr p1, v0

    new-instance v0, Lmiui/home/lib/dialog/AlertDialog$Builder;

    const v1, 0x7f120007

    invoke-direct {v0, p0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setCancelable(Z)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f11028e

    invoke-virtual {v0, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setTitle(I)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const p1, 0x7f11028d

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const v0, 0x7f11028b

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p0

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    const p1, 0x7f110289

    goto :goto_0

    :cond_0
    const p1, 0x7f11028a

    :goto_0
    new-instance p2, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$Cib-GxXEXaSuqrnvO9UXFq2g0kQ;

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$Cib-GxXEXaSuqrnvO9UXFq2g0kQ;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V

    invoke-virtual {p0, p1, p2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f11028c

    new-instance p2, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$q0Ap0KjeCK2RJGH7T674Bomi6yc;

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$q0Ap0KjeCK2RJGH7T674Bomi6yc;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V

    invoke-virtual {p0, p1, p2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    return-void
.end method

.method public static startMaMlDownload(Landroid/view/View;Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->mDownloadObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)V

    sget-object p1, Lcom/miui/home/launcher/gadget/MaMlUtil;->mDownloadObservers:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->startMaMlDownload(Landroid/content/Context;)V

    return-void
.end method
