.class public Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;
.super Ljava/lang/Object;
.source "PortableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/utils/PortableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentAndUser"
.end annotation


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->user:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;

    iget-object v0, p0, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->user:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
