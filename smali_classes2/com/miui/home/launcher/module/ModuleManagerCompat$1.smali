.class Lcom/miui/home/launcher/module/ModuleManagerCompat$1;
.super Ljava/lang/Object;
.source "ModuleManagerCompat.java"

# interfaces
.implements Lmiui/module/ModuleManager$ModuleLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/module/ModuleManagerCompat;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/module/ModuleManagerCompat;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/module/ModuleManagerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat$1;->this$0:Lcom/miui/home/launcher/module/ModuleManagerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFail(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "Launcher.ModuleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat$1;->this$0:Lcom/miui/home/launcher/module/ModuleManagerCompat;

    invoke-static {v0}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->access$200(Lcom/miui/home/launcher/module/ModuleManagerCompat;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_FAILED:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackModuleLoad(Ljava/lang/String;ZI)V

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v1, Lcom/miui/home/launcher/module/ModuleLoadMessage;

    invoke-direct {v1, p1, v0}, Lcom/miui/home/launcher/module/ModuleLoadMessage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onLoadFinish()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat$1;->this$0:Lcom/miui/home/launcher/module/ModuleManagerCompat;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->access$300(Lcom/miui/home/launcher/module/ModuleManagerCompat;Landroid/app/Application;)V

    return-void
.end method

.method public onLoadSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p2, "Launcher.ModuleManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat$1;->this$0:Lcom/miui/home/launcher/module/ModuleManagerCompat;

    invoke-static {p2}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->access$200(Lcom/miui/home/launcher/module/ModuleManagerCompat;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    sget-object v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_SUCCESS:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackModuleLoad(Ljava/lang/String;ZI)V

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/module/ModuleLoadMessage;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/module/ModuleLoadMessage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
