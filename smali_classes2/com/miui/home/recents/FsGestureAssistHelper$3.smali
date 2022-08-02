.class Lcom/miui/home/recents/FsGestureAssistHelper$3;
.super Landroid/database/ContentObserver;
.source "FsGestureAssistHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/FsGestureAssistHelper;->registerAssistObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/FsGestureAssistHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/FsGestureAssistHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper$3;->this$0:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p0, p0, Lcom/miui/home/recents/FsGestureAssistHelper$3;->this$0:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-static {p0}, Lcom/miui/home/recents/FsGestureAssistHelper;->access$100(Lcom/miui/home/recents/FsGestureAssistHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "nav_bar_assist_edge_gesture"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mIsAssistGestureEnabled:Z

    return-void
.end method
