.class Lcom/xiaomi/onetrack/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/c/n;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    iget-object v0, v0, Lcom/xiaomi/onetrack/c/n;->a:Lcom/xiaomi/onetrack/c/m;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/c/m;->a()V

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result v0

    const-string v1, "UploadTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadTimer netReceiver, \u7f51\u7edc\u662f\u5426\u53ef\u7528="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    invoke-static {v3}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    iget-object v5, v5, Lcom/xiaomi/onetrack/c/n;->a:Lcom/xiaomi/onetrack/c/m;

    invoke-virtual {v5, v3}, Lcom/xiaomi/onetrack/c/m;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    iget-object v5, v5, Lcom/xiaomi/onetrack/c/n;->a:Lcom/xiaomi/onetrack/c/m;

    int-to-long v6, v4

    invoke-virtual {v5, v3, v6, v7}, Lcom/xiaomi/onetrack/c/m;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UploadTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method
