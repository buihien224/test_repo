.class public Lcom/xiaomi/onetrack/util/oaid/helpers/j;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String; = "OppoDeviceIDHelper"


# instance fields
.field a:Lcom/xiaomi/onetrack/util/oaid/a/e;

.field public final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/content/ServiceConnection;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/OppoDeviceIDHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/OppoDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/j;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/16 v2, 0x40

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object p2, p2, v2

    invoke-virtual {p2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p2

    :try_start_1
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p2

    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    iput-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->e:Ljava/lang/String;

    :cond_2
    iget-object p2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a:Lcom/xiaomi/onetrack/util/oaid/a/e;

    check-cast p2, Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;

    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->e:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;)Z
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.heytap.openid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    return v1

    :catch_0
    move-exception p1

    const-string v0, "OppoDeviceIDHelper"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ""

    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "OppoDeviceIDHelper"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/oaid/a/e$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/onetrack/util/oaid/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a:Lcom/xiaomi/onetrack/util/oaid/a/e;

    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a:Lcom/xiaomi/onetrack/util/oaid/a/e;

    if-eqz v0, :cond_1

    const-string v0, "OUID"

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v0, "OppoDeviceIDHelper"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    const-string v2, "OppoDeviceIDHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :goto_1
    :try_start_6
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OppoDeviceIDHelper"

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    throw v0

    :cond_2
    :goto_3
    return-object v1
.end method
