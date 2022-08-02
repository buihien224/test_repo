.class public Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;
.super Ljava/lang/Object;
.source "MIUIWidgetReplaceHandler.java"


# direct methods
.method private static canReplace(Landroid/os/Bundle;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)Z
    .locals 4

    const-string v0, "widget_span_x"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "widget_span_y"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "MIUIWidgetReplaceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canReplace spanX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , spanY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->spanX:I

    if-ne v1, v0, :cond_0

    iget p1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->spanY:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static findMaMlByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMaMlItems()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findWidgetByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$replaceWidget$0(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    iget-wide v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "MIUIWidgetReplaceHandler"

    const-string p1, "replaceWidget error, CellScreen not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->itemType:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    move-object p0, p2

    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p3, p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->addMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    iget-wide v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    iput-wide v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    new-instance p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v1

    invoke-direct {p1, v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    invoke-virtual {p3, p1, p0}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetId(I)V

    goto :goto_0

    :cond_2
    move-object p1, p2

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p3, p1, p0}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->finishPending()V

    return-void
.end method

.method public static replaceWidget(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "replace_widget_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    const-string p0, "MIUIWidgetReplaceHandler"

    const-string p1, "replaceWidget error, invalid widget id"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "replace_widget_type"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "MIUIWidgetReplaceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replaceWidget itemType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->findMaMlByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {p0, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->findWidgetByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string p0, "MIUIWidgetReplaceHandler"

    const-string p1, "replaceWidget error, widget not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {p1, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->canReplace(Landroid/os/Bundle;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string p0, "MIUIWidgetReplaceHandler"

    const-string p1, "replaceWidget abort"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createItemInfo(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p0, "MIUIWidgetReplaceHandler"

    const-string p1, "replaceWidget error, itemInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    iget-wide v3, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    goto :goto_2

    :cond_6
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    :goto_2
    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDeleteMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;I)V

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    const-wide/16 v3, -0x64

    iput-wide v3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->container:J

    iget-wide v3, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    iput-wide v3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    iget v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellX:I

    iput v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellX:I

    iget v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellY:I

    iput v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellY:I

    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;

    invoke-direct {v1, v2, v0, p1, p0}, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
