.class Lcom/miui/home/recents/views/RecentsContainer$8;
.super Landroid/database/ContentObserver;
.source "RecentsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/RecentsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$8;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$8;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_recents_show_mem_info"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$602(Lcom/miui/home/recents/views/RecentsContainer;Z)Z

    return-void
.end method
