.class Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;
.super Ljava/lang/Object;
.source "BaseAutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "className"

    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    const-string v4, "spanX"

    invoke-static {p1, v4}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "spanY"

    invoke-static {p1, v5}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v8, v4

    move v9, v5

    goto :goto_0

    :catch_0
    move v4, v0

    :catch_1
    move v9, v0

    move v8, v4

    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object v4, v4, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$600(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/appwidget/AppWidgetHost;

    move-result-object v10

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v4 .. v10}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$700(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;IILandroid/appwidget/AppWidgetHost;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object p1, p1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object v5, p1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object p1, p1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$600(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/appwidget/AppWidgetHost;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v4, v7

    move v6, v8

    move v7, v9

    move-object v8, p1

    move-object v9, v0

    invoke-static/range {v1 .. v10}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/os/Bundle;)J

    move-result-wide p1

    return-wide p1

    :cond_3
    :try_start_2
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v3, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "appWidgetId"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "intent"

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "itemFlags"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "itemType"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanX"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanY"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "appWidgetProvider"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "favorites"

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    return-wide p1

    :catch_2
    move-exception p1

    const-string p2, "AutoInstalls"

    const-string p3, "Problem allocating appWidgetId"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v1

    :cond_4
    :goto_2
    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    goto/16 :goto_1

    :cond_5
    const-string v5, "extra"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "key"

    invoke-static {p1, v5}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-static {p1, v6}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v10, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Widget extras must have a key and value"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Widgets can contain only extras"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    const-string p1, "AutoInstalls"

    const-string p2, "Skipping invalid <appwidget> with no component"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method
