.class Lcom/miui/home/recents/OverviewCommandHelper$ShowRecentsCommand;
.super Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;
.source "OverviewCommandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/OverviewCommandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowRecentsCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/OverviewCommandHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/OverviewCommandHelper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/OverviewCommandHelper$ShowRecentsCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;-><init>(Lcom/miui/home/recents/OverviewCommandHelper;)V

    return-void
.end method


# virtual methods
.method protected handleCommand(J)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/home/recents/OverviewCommandHelper$ShowRecentsCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    invoke-interface {p1}, Lcom/miui/home/recents/ActivityControlHelper;->getVisibleRecentsView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
