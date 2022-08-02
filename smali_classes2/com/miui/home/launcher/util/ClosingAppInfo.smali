.class public Lcom/miui/home/launcher/util/ClosingAppInfo;
.super Ljava/lang/Object;
.source "ClosingAppInfo.java"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final isAppPair:Z

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->componentName:Landroid/content/ComponentName;

    iput p2, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->userId:I

    iput-boolean p3, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->isAppPair:Z

    return-void
.end method
