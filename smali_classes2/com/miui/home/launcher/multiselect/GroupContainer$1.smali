.class Lcom/miui/home/launcher/multiselect/GroupContainer$1;
.super Ljava/lang/Object;
.source "GroupContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/multiselect/GroupContainer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/GroupContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/GroupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/GroupContainer$1;->this$0:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/GroupContainer$1;->this$0:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/GroupContainer;->isNormalState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->autoFolder()V

    const-string p1, "group"

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditModeTopMenuClickEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
