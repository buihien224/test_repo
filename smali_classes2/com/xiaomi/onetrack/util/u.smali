.class public Lcom/xiaomi/onetrack/util/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "PermissionUtil"

.field private static final b:Ljava/lang/String; = "android.permission.READ_PRIVILEGED_PHONE_STATE"

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.miui.analytics"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.miui.cit"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.xiaomi.finddevice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.miui.securitycenter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.xiaomi.factory.mmi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.miui.qr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.qualcomm.qti.autoregistration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.miui.tsmclient"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.miui.sekeytool"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.android.updater"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "cn_chinamobile"

    const-string v1, "ro.miui.cust_variant"

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn_chinatelecom"

    const-string v1, "ro.miui.cust_variant"

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.mobiletools.systemhelper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.miui.dmregservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PermissionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "static initializer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    const-string v2, "ro.miui.restrict_imei"

    invoke-static {v2}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "PermissionUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRestrictIMEI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/u;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_2
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
